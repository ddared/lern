class MusicBox
  
  def initialize
    @playlist = Array.new
  end
  
  def add(trac)
   playlist << track if track.respond_to?(:filename)and track.respond_to?(:info)
  end
  
end
