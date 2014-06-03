class Event
  
  attr_accessor :title, :start_time, :end_time, :description
  
  def initialize(params = {})
    params = {} unless params.is_a?(Hash)
    @title = params[:title] || ''
    @start_time = params[:start_time] || nil
    @end_time = params[:end_time] || nil
    @description = params[:description] || ''
  end

end