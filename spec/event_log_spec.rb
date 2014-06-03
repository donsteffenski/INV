require 'spec_helper'
require 'event_log'
require 'event'
 
describe EventLog do
  
  context "Given an empty EventLog" do

    it { should be_empty }
    
    context "when an Event is created" do
      before :each do
        @event = subject.create_event(:title => "My Event")
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
    
    context "when another Event is created" do
      
      before :each do
        @event2 = @event_log.create_event 
      end
      
      describe "calling the events method" do
      
        it "should return an Array of Events" do
          expect(@event_log.events).to be_a Array
          expect(@event_log.events).to include @event1, @event2
        end
        
      end
      
    end
    
  end
  
  describe "Event attributes" do
    
    context "Given an Eventlog with an Event with a title" do
    
      subject do
        @event = EventLog.new.create_event(:title => "My first Event") 
      end
      
      it { should be_an_instance_of Event }
      
      its(:title) { should == "My first Event" }
    
    end 
          
  end
    

  
  
 
end