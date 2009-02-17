class MusicBox
  
  def initialize
    @playlist = Array.new
  end
  
  def add(track)
   playlist << track if track.respond_to?(:filename)and track.respond_to?(:info)
  end
  
  def play(track)
    puts @playlist.first.info
  end
end