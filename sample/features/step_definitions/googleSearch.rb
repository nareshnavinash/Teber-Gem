Before('@TC_Google_Search') do
  $filter_run_once ||= false  # have to define a variable before we can reference its value
  if !$filter_run_once
    @@google_page = Pages::GoogleSearch.new
  end
  $filter_run_once = true
end

Before('@TC_Google_Search') do
  @@driver = Driver.new()
end

After('@TC_Google_Search') do
  @@driver.quit
end

Given("I navigate to google search page") do
    @@driver.get($param["googleURL"])
end

When("I type the term in google search bar and click on serach results") do
    @@google_page.enter_text_and_search($param["searchTerm"])
end

Then("I should get the results page") do
    expect(@@google_page.is_results_page_displayed?).to eql true
end

When("I type the {string} in google search bar and click on serach results") do |string|
    @@google_page.enter_text_and_search(string)
end