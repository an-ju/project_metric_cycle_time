require "project_metric_cycle_time/version"
require 'project_metric_cycle_time/data_generator'
require 'project_metric_base'
require 'faraday'

class ProjectMetricCycleTime
  include ProjectMetricBase
  add_credentials %I[tracker_project tracker_token]
  add_raw_data %w[tracker_stories tracker_cycle_time]

  def initialize(credentials, raw_data = nil)
    @project = credentials[:tracker_project]
    @conn = Faraday.new(url: 'https://www.pivotaltracker.com/services/v5')
    @conn.headers['Content-Type'] = 'application/json'
    @conn.headers['X-TrackerToken'] = credentials[:tracker_token]

    complete_with raw_data
  end

  def score
    # Average cycle time.
    tracked_stories.inject(0.0) { |sum, s| sum + s['cycle_time_details']['total_cycle_time'] } / tracked_stories.length.to_f
  end

  def image
    { chartType: 'story_overall',
      data: { tracked_stories: extend_stories(tracked_stories),
              other_stories: extend_stories(other_stories)}}
  end

  def obj_id
    nil
  end

  private

  def tracker_stories
    @tracker_stories = JSON.parse(@conn.get("projects/#{@project}/stories").body)
  end

  def tracker_cycle_time
    @tracker_cycle_time = JSON.parse(@conn.get("projects/#{@project}/stories?fields=cycle_time_details").body)
  end

  def tracked_stories
    @tracker_cycle_time.select { |s| s['cycle_time_details'].key? 'total_cycle_time' }
  end

  def other_stories
    @tracker_cycle_time.reject { |s| s['cycle_time_details'].key? 'total_cycle_time' }
  end

  def extend_stories(stories)
    stories.map do |story|
      linked_story = @tracker_stories.find { |s| s['id'].eql? story['id']}
      linked_story.nil? ? story : story.update(linked_story)
    end
  end
end
