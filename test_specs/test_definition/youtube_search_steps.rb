Given(/^I am on YouTube$/) do
  visit "https://www.youtube.com"
end

When(/^I search on youtube with term "([^"]*)"$/) do |term|
     fill_in('search_query', :with => term)
     click_button('search-btn')
end

Then(/^I should see video with name "([^"]*)"$/) do |text|
     page.should have_content(text)
end
