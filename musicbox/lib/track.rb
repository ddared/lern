class Track
  
  attr_accessor :author
  attr_accessor :name
  attr_reader   :filename
  
  def initialize(params=nil)
    if params
      @author   = params[:author]
      @name     = params[:name]
      @filename = params[:filename]
    end
  end
  
  def duration
    '3:50'
  end
  
  def info
    "#{self.author} - #{self.name}, #{self.duration}"
  end
  
  def filename=(f)
    @filename = nil
    @filename = f if File.exists?(f)
  end
  
end