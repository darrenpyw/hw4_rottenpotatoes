Given /I am on the RottenPotatoes home page/ do
  visit "/movies"
end

And /I should see the link "(.*)"/ do |link_label|
  page.should have_link(link_label)
end

Then /I should be on the RottenPotatoes home page/ do
#request.request_uri.should == send("movies_path")
  puts current_url
end


Then /I should be on the Sign up page/ do
  current_path.should == new_user_path
end

Then /I should be on the Login page/ do
  current_path.should == login_path
end

Then /I should be on the sessions path/ do
  current_path.should == sessions_path
end

When /I fill in the following:/ do |fields|
  fields.rows_hash.each do |name, value|
    step %{I fill in "#{name}" with "#{value}"}
  end
end

When /^(?:|I )fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  fill_in(field, :with => value)
end

When /I click "(.*)"/ do |label|
  click_link_or_button(label)
end

And /Response should be successful/ do
  puts response
end 

And /I should see Welcome "(.*)"/ do |user|
  page.should have_content(user)
end

When /^I dump.* the response/ do
  puts body
end
