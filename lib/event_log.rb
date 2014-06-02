

class EventLog
  
  attr_accessor :events
  
  def initialize
    @events = []
  end
  
  def empty?
    @event.nil?
  end
  
  def create_event
    @event = Event.new
    @events << @event
    @event
  end
  
end