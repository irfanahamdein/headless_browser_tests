Given(/^I am on YouTube$/) do
  visit "https://www.youtube.com"
end

When(/^I search on youtube with term "([^"]*)"$/) do |term|
     fill_in('search_query', :with => term)
     find('#search-icon-legacy').click
end

Then(/^I should see video with name "([^"]*)"$/) do |text|
     binding.pry
     page.should have_content(text)
end
