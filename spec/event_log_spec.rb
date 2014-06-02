require 'spec_helper'
require 'event_log'
require 'event'
 
describe EventLog do
  
  context "Given an empty EventLog" do

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
 
  context "Given an EventLog with one Event" do
    
    before :all do
      @event_log = EventLog.new
      @event1 = @event_log.create_event
    end
    
    context "when an Event is created" do
      before :each do
        @event2 = @event_log.create_event
      end
      
      it "should return an Array of Events" do
        expect(@event_log.events).to be_a Array
        expect(@event_log.events).to include @event1, @event2
      end
      
    end
    
  end
 
end