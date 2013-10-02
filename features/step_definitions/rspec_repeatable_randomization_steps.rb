Given(/^A randomly ordered test run with a seed$/) do
  @seed    = rand(9999)
  @command = "bundle exec rspec spec/randomized_spec.rb --order rand --seed #{@seed}"

  step "I run `#{@command}`"
  @random_out1 = all_output.match(/^\d{5,10}[^\d]/).to_s

  # Precautionary measure to ensure
  # that we don't have empty strings running around.
  expect(@random_out1).to match(/\d{5,10}/)

  # Reset process to an empty array.
  # Otherwise aruba will just append future output to the output from this cmd.
  @processes = []
end

When(/^I run it a second time with the same seed$/) do
  step "I run `#{@command}`"
  @random_out2 = all_output.match(/^\d{5,10}[^\d]/).to_s
end

Then(/^I see the same results$/) do
  expect(@random_out2).to eq @random_out1
end
