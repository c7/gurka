Givet /^att jag är på (\w+)$/ do |page|
  visit path_to(page)
end

När /^jag klickar på "([^\"]*)"$/ do |button|
  click_button(button)
end

När /^jag följer "([^\"]*)"$/ do |link|
  click_link(link)
end

Så /ska resultatet innehålla "([^\"]*)"$/ do |text|
  response_body.should contain(text)
end

Så /^ska statuskoden vara "([^\"]*)"$/ do |code|
  response_code.should == code.to_i
end