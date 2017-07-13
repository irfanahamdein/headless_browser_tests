Feature: YouTube search for top videos

Scenario: verify search for a term on youtube should list top related videos
          Given I am on YouTube
          When I search on youtube with term "upgrad "
          Then I should see video with name "An Introduction to UpGrad"
