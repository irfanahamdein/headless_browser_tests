After do |scenario|
  if scenario.failed?
      Capybara::Screenshot.screen_shot_and_save_page
      abort "saving screenshot after scenario : #{scenario.name} failed"
  else
    Capybara::Screenshot.screen_shot_and_save_page
    puts "saving screenshot after scenario : #{scenario.name} passed"
   end
end
