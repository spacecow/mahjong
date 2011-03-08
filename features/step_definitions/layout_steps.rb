Then /^I should see "([^"]*)" as (\w+) flash message$/ do |txt,cat|
  with_scope("div#flash_#{cat}"){ page.text.should eq txt }
end

When /^I follow "([^"]*)" at the bottom of the page$/ do |link|
  When %(I follow "#{link}" within "div#bottom_links")
end
