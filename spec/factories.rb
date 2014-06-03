FactoryGirl.define do
  
  factory :event do
  
    title "My Event"
    time_started {24.hours.ago}
    time_ended {22.hours.ago}
    description
    
  end

end