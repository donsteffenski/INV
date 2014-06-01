require 'spec_helper'
require 'work_log'
require 'event'
 
describe WorkLog do
  
  context "Given an empty WorkLog" do

    
    it { should be_empty }
    
    context "when an Event is created" do
      
      before :each do
        @event = subject.create_event
      end
      
      it "should return an Event" do
        expect(@event).to be_a Event
      end
      
      it { should_not be_empty }
       
    end

    
  end
 
  context "Given a WorkLog with one Event" do
    
    before :all do
      @work_log = WorkLog.new
      @event1 = @work_log.create_event
    end
    
    context "when an Event is created" do
      
      before :each do
        @event2 = @work_log.create_event
      end
      
      it "should return an Array of Events" do
        expect(@work_log.events).to be_a Array
        @work_log.events.should include @event1, @event2
      end
      
      
    end
    
  end
 
end