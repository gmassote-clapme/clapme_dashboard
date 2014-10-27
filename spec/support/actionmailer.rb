RSpec.configure do |config|

  config.before(:suite) do
    ActionMailer::Base.deliveries.clear
  end

  config.after(:each) do
    ActionMailer::Base.deliveries.clear
  end

end