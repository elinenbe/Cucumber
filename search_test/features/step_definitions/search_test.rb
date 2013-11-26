Given(/^I am on realestate\.com\.au$/) do
  visit('http://www.realestate.com.au/buy')
end

When (/^I click the state of Victoria$/) do
  visit('http://www.realestate.com.au/buy?searchMapId=VIC')
end

When(/^I select the suburb of (.*)$/) do |selectedSuburb|
    @suburb = selectedSuburb
    select @suburb, :from => 'suburbSelect'
end

When(/^I choose Property Type (.*)$/) do |selectedPropertyType|
    @propertyType = selectedPropertyType
    find(:css, "fieldset.propertyType > div.formInp > img.LMIDDArrow").click
    find(:id, "ddCb_state_propertyType_0").click
    find(:id, "ddCb_state_propertyType_3").click
end

Given(/^I set Max Price to (.*)/) do |selectedPrice|
    @price = selectedPrice
    find(:css, "fieldset.maxPrice.last > div.formInp > img.LMIDDArrow").click
    find(:xpath, "//div[@id='LMIDD_state_maxPrice']/div[2]/dl/dd[11]").click
end

Then(/^when I search I should see corresponding results$/) do
    find(:id, "state_searchBtnState").click
    expect(page).to have_title @propertyType
    expect(page).to have_title @price
    @should_find = @propertyType.downcase+'s for sale between $0 and $'+@price+' in '+@suburb+', VIC'
    page.should have_css("div.h1Wrapper", :text => @should_find)

    @results = find(:css, "#resultsInfo > p").text
    @results_found = @results.scan(/^Showing 1 - 20 of (.*) Total Results$/)
    print 'Total Results found: '+@results_found[0][0]
    
end





