Given /I am on the RottenPotatoes home page/ do
  visit "/movies"
end

Then /I should be on the Sign up page/ do
  current_path.should == new_user_path
end

Then /I should be on the Sign in page/ do
  current_path.should == login_path
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

And /I should see Welcome "(.*)"/ do |user|
  page.should have_content(user)
end
