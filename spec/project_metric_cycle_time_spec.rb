RSpec.describe ProjectMetricCycleTime do
  before :each do
    stub_request(:get, "https://www.pivotaltracker.com/services/v5/projects/2154341/stories")
      .to_return(status: 200, body: File.read('spec/data/stories.json'))
    stub_request(:get, "https://www.pivotaltracker.com/services/v5/projects/2154341/stories?fields=cycle_time_details")
      .to_return(status: 200, body: File.read('spec/data/cycle_time.json'))
  end

  context 'meta data' do
    it "has a version number" do
      expect(ProjectMetricCycleTime::VERSION).not_to be nil
    end
  end

  context 'image and score' do
    subject(:metric) do
      credentials = {tracker_project: '2154341', tracker_token: 'test token'}
      described_class.new credentials, nil
    end

    it 'sets image' do
      expect(metric.image).to be_a(Hash)

    end

    it 'sets image values correctly' do
      expect(metric.image[:data][:tracked_stories].length).to eql(3)
      expect(metric.image[:data][:tracked_stories].map { |el| el['name'] }).to include('Demo Bug 1')
    end

    it 'sets score' do
      expect(metric.score).not_to be_nil
    end

    it 'calculates average cycle time' do
      expect(metric.score).to eql(1323564000.0)
    end
  end

  context 'fake data' do
    it 'creates three fake metrics' do
      expect(described_class.fake_data).to be_a(Array)
      expect(described_class.fake_data.length).to eql(3)
    end
  end
end
