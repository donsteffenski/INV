

class EventLog
  
  attr_accessor :events
  
  def initialize
    @events = []
  end
  
  def empty?
    @events.empty?
  end
  
  def create_event(params = {})
    @event = Event.new(params)
    @events << @event
    @event
  end
  
  def delete_event(event)
    @events.delete(event)
  end
  
end