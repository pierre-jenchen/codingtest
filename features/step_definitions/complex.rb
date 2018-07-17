require 'capybara'

#simplify following selectors
all('input > .mybuttons')[0].first('#accept')
find(:xpath, "(.//input[@type='text' or @type='number']|.//textarea)").find(:xpath, '.btn')
panel_input = all('.panel.div.js-header.is-selected > span > input')
panel_input.find_button('hello there')


# which one of the following steps is desired to have?
When(/^Enter "([^"]*)" in field "([^"]*)"$/) do |value, field_name|
  find('input', text => field_name).set value
end

When(/^Enter "([^"]*)" in configure field$/) do |value|
  find('#configure > input').set value
end