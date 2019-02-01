class ProjectMetricCycleTime
  def self.fake_data
    [fake_metric(0.38), fake_metric(2.3), fake_metric(10.2)]
  end

  def self.fake_metric(avg_days)
    { score: (avg_days * 24 * 3600 * 1000).to_i,
      image: { chartType: 'cycle_time',
               data: { all_stories: tracked_stories,
                       accepted_stories: accepted_stories }}}
  end

  def self.accepted_stories
    [
        {
            "kind": "story",
            "id": 160837094,
            "created_at": "2018-09-27T21:26:32Z",
            "updated_at": "2019-01-28T00:37:25Z",
            "accepted_at": "2019-01-28T00:37:25Z",
            "story_type": "bug",
            "name": "Demo Bug 1",
            "description": "Bug 1's description.",
            "current_state": "accepted",
            "requested_by_id": 1140314,
            "url": "https://www.pivotaltracker.com/story/show/160837094",
            "project_id": 2200655,
            "owner_ids": [
                1140314
            ],
            "labels": [],
            "owned_by_id": 1140314,
            "cycle_time_details": {
                "total_cycle_time": 3562874000,
                "started_time": 3000,
                "started_count": 1,
                "finished_time": 3562868000,
                "finished_count": 1,
                "delivered_time": 3000,
                "delivered_count": 1,
                "rejected_time": 0,
                "rejected_count": 0,
                "story_id": 160837094,
                "kind": "cycle_time_details"
            }
        },
        {
            "kind": "story",
            "id": 160837058,
            "created_at": "2018-09-27T21:25:14Z",
            "updated_at": "2019-02-01T21:11:00Z",
            "accepted_at": "2019-02-01T21:11:00Z",
            "estimate": 3,
            "story_type": "feature",
            "name": "Demo Story 1",
            "description": "This is the description for demo story 1.",
            "current_state": "accepted",
            "requested_by_id": 1140314,
            "url": "https://www.pivotaltracker.com/story/show/160837058",
            "project_id": 2200655,
            "owner_ids": [
                1140314
            ],
            "labels": [],
            "owned_by_id": 1140314,
            "cycle_time_details": {
                "total_cycle_time": 97000,
                "started_time": 19000,
                "started_count": 1,
                "finished_time": 63000,
                "finished_count": 1,
                "delivered_time": 15000,
                "delivered_count": 1,
                "rejected_time": 0,
                "rejected_count": 0,
                "story_id": 160837058,
                "kind": "cycle_time_details"
            }
        },
        {
            "kind": "story",
            "id": 160837072,
            "created_at": "2018-09-27T21:25:33Z",
            "updated_at": "2019-02-01T21:44:17Z",
            "accepted_at": "2019-02-01T21:44:17Z",
            "estimate": 2,
            "story_type": "feature",
            "name": "Demo Story 2",
            "description": "This is description for demo story 2.",
            "current_state": "accepted",
            "requested_by_id": 1140314,
            "url": "https://www.pivotaltracker.com/story/show/160837072",
            "project_id": 2200655,
            "owner_ids": [
                1140314,
                2996252
            ],
            "labels": [],
            "owned_by_id": 1140314,
            "cycle_time_details": {
                "total_cycle_time": 421626000,
                "started_time": 421622000,
                "started_count": 1,
                "finished_time": 1000,
                "finished_count": 1,
                "delivered_time": 3000,
                "delivered_count": 1,
                "rejected_time": 0,
                "rejected_count": 0,
                "story_id": 160837072,
                "kind": "cycle_time_details"
            }
        },
        {
            "kind": "story",
            "id": 160837087,
            "created_at": "2018-09-27T21:26:13Z",
            "updated_at": "2019-02-01T21:44:31Z",
            "accepted_at": "2019-02-01T21:44:31Z",
            "story_type": "chore",
            "name": "Demo Chore 1",
            "description": "Chore 1's descriptions.",
            "current_state": "accepted",
            "requested_by_id": 1140314,
            "url": "https://www.pivotaltracker.com/story/show/160837087",
            "project_id": 2200655,
            "owner_ids": [
                1140314
            ],
            "labels": [],
            "owned_by_id": 1140314,
            "cycle_time_details": {
                "total_cycle_time": 1000,
                "started_time": 1000,
                "started_count": 1,
                "finished_time": 0,
                "finished_count": 0,
                "delivered_time": 0,
                "delivered_count": 0,
                "rejected_time": 0,
                "rejected_count": 0,
                "story_id": 160837087,
                "kind": "cycle_time_details"
            }
        }
    ]
  end

  def self.tracked_stories
    [
        {
            "kind": "story",
            "id": 160837094,
            "created_at": "2018-09-27T21:26:32Z",
            "updated_at": "2019-01-28T00:37:25Z",
            "accepted_at": "2019-01-28T00:37:25Z",
            "story_type": "bug",
            "name": "Demo Bug 1",
            "description": "Bug 1's description.",
            "current_state": "accepted",
            "requested_by_id": 1140314,
            "url": "https://www.pivotaltracker.com/story/show/160837094",
            "project_id": 2200655,
            "owner_ids": [
                1140314
            ],
            "labels": [],
            "owned_by_id": 1140314,
            "cycle_time_details": {
                "total_cycle_time": 3562874000,
                "started_time": 3000,
                "started_count": 1,
                "finished_time": 3562868000,
                "finished_count": 1,
                "delivered_time": 3000,
                "delivered_count": 1,
                "rejected_time": 0,
                "rejected_count": 0,
                "story_id": 160837094,
                "kind": "cycle_time_details"
            }
        },
        {
            "kind": "story",
            "id": 160837058,
            "created_at": "2018-09-27T21:25:14Z",
            "updated_at": "2019-02-01T21:11:00Z",
            "accepted_at": "2019-02-01T21:11:00Z",
            "estimate": 3,
            "story_type": "feature",
            "name": "Demo Story 1",
            "description": "This is the description for demo story 1.",
            "current_state": "accepted",
            "requested_by_id": 1140314,
            "url": "https://www.pivotaltracker.com/story/show/160837058",
            "project_id": 2200655,
            "owner_ids": [
                1140314
            ],
            "labels": [],
            "owned_by_id": 1140314,
            "cycle_time_details": {
                "total_cycle_time": 97000,
                "started_time": 19000,
                "started_count": 1,
                "finished_time": 63000,
                "finished_count": 1,
                "delivered_time": 15000,
                "delivered_count": 1,
                "rejected_time": 0,
                "rejected_count": 0,
                "story_id": 160837058,
                "kind": "cycle_time_details"
            }
        },
        {
            "kind": "story",
            "id": 160837072,
            "created_at": "2018-09-27T21:25:33Z",
            "updated_at": "2019-02-01T21:44:17Z",
            "accepted_at": "2019-02-01T21:44:17Z",
            "estimate": 2,
            "story_type": "feature",
            "name": "Demo Story 2",
            "description": "This is description for demo story 2.",
            "current_state": "accepted",
            "requested_by_id": 1140314,
            "url": "https://www.pivotaltracker.com/story/show/160837072",
            "project_id": 2200655,
            "owner_ids": [
                1140314,
                2996252
            ],
            "labels": [],
            "owned_by_id": 1140314,
            "cycle_time_details": {
                "total_cycle_time": 421626000,
                "started_time": 421622000,
                "started_count": 1,
                "finished_time": 1000,
                "finished_count": 1,
                "delivered_time": 3000,
                "delivered_count": 1,
                "rejected_time": 0,
                "rejected_count": 0,
                "story_id": 160837072,
                "kind": "cycle_time_details"
            }
        },
        {
            "kind": "story",
            "id": 160837087,
            "created_at": "2018-09-27T21:26:13Z",
            "updated_at": "2019-02-01T21:44:31Z",
            "accepted_at": "2019-02-01T21:44:31Z",
            "story_type": "chore",
            "name": "Demo Chore 1",
            "description": "Chore 1's descriptions.",
            "current_state": "accepted",
            "requested_by_id": 1140314,
            "url": "https://www.pivotaltracker.com/story/show/160837087",
            "project_id": 2200655,
            "owner_ids": [
                1140314
            ],
            "labels": [],
            "owned_by_id": 1140314,
            "cycle_time_details": {
                "total_cycle_time": 1000,
                "started_time": 1000,
                "started_count": 1,
                "finished_time": 0,
                "finished_count": 0,
                "delivered_time": 0,
                "delivered_count": 0,
                "rejected_time": 0,
                "rejected_count": 0,
                "story_id": 160837087,
                "kind": "cycle_time_details"
            }
        },
        {
            "kind": "story",
            "id": 162710886,
            "created_at": "2018-12-17T18:40:19Z",
            "updated_at": "2019-02-01T21:44:19Z",
            "estimate": 2,
            "story_type": "feature",
            "name": "Demo story",
            "current_state": "started",
            "requested_by_id": 1140314,
            "url": "https://www.pivotaltracker.com/story/show/162710886",
            "project_id": 2200655,
            "owner_ids": [
                1140314
            ],
            "labels": [],
            "owned_by_id": 1140314,
            "cycle_time_details": {
                "total_cycle_time": 578000,
                "started_time": 578000,
                "started_count": 1,
                "finished_time": 0,
                "finished_count": 0,
                "delivered_time": 0,
                "delivered_count": 0,
                "rejected_time": 0,
                "rejected_count": 0,
                "story_id": 162710886,
                "kind": "cycle_time_details"
            }
        },
        {
            "kind": "story",
            "id": 163507032,
            "created_at": "2019-01-28T00:37:02Z",
            "updated_at": "2019-02-01T21:44:24Z",
            "estimate": 1,
            "story_type": "feature",
            "name": "Test activity endpoint",
            "description": "This is meant for testing the activity endpoint.",
            "current_state": "finished",
            "requested_by_id": 1140314,
            "url": "https://www.pivotaltracker.com/story/show/163507032",
            "project_id": 2200655,
            "owner_ids": [
                1140314
            ],
            "labels": [
                {
                    "id": 20933095,
                    "project_id": 2200655,
                    "kind": "label",
                    "name": "test",
                    "created_at": "2019-01-28T00:37:53Z",
                    "updated_at": "2019-01-28T00:37:53Z"
                }
            ],
            "owned_by_id": 1140314,
            "cycle_time_details": {
                "total_cycle_time": 575000,
                "started_time": 2000,
                "started_count": 1,
                "finished_time": 573000,
                "finished_count": 1,
                "delivered_time": 0,
                "delivered_count": 0,
                "rejected_time": 0,
                "rejected_count": 0,
                "story_id": 163507032,
                "kind": "cycle_time_details"
            }
        }
    ]
  end

end