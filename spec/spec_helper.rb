RSpec.configure do |config|
  config.order = :random

  config.before(:each) do
    srand RSpec.configuration.seed
  end
end
