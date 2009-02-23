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
  # в playlist <Track:0x1026434 @filename="haha_not_valid_path", @author="Sting", @name="Never Coming Home">
  def delete(*tracks)
    tracks.each do |track| # Author - Name 
      author = track.scan(/\A\w+/)
      name = track.scan(/\w+\z/)
      p author
      p name
    end 
  end
  
  def play(track)
    puts @playlist.first.info
  end
end