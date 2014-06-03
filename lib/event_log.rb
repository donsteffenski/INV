

class EventLog
  
  attr_accessor :events
  
  def initialize
    @events = []
  end
  
  def empty?
    @event.nil?
  end
  
  def create_event(params = {})
    @event = Event.new(params)
    @events << @event
    @event
  end
  
end