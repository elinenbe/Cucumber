Given(/^I am on the (.*) homepage$/) do |baseURL|
  @base = baseURL
end

When(/^I click the header (.*)$/) do |link|
    @headerlink = link
end

Then(/^I should end up at (.*) with (.*)$/) do |path,page_title|
    visit(@base+path)
    expect(page).to have_title page_title
end
