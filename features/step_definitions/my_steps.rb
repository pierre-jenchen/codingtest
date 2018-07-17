require 'capybara'

Given(/^You are on the front page$/) do
  visit('https://www.amazon.com')
end

When(/^Enter "([^"]*)" in the search field$/) do |search_term|
  find('#twotabsearchtextbox').set search_term
end

When(/^Press key "([^"]*)"$/) do |key|
  find('#twotabsearchtextbox').send_keys key.to_sym
end

Then(/^Assert search results show up$/) do
  pending
end

Then(/^Open detail page for the (\d+)\. result$/) do |nth|
  pending
end