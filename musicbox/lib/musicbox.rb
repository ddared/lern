class MusicBox
  
  def initialize
    @playlist = Array.new
  end
  
  def add(*tracks)
   tracks.each do |track|
     @playlist << track if track.respond_to?(:filename)and track.respond_to?(:info)
   end
  end
  
  #todo: пока не работает
  def delete(*tracks)
    tracks.each do |track| 
      @playlist.delete_if{|key,value| value == /track/}
    end 
  end
  
  def play(track)
    puts @playlist.first.info
  end
end