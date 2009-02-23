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
  # в playlist [<Track:0x1026434 @filename="haha_not_valid_path", @author="Sting", @name="Never Coming Home">]
  def delete(*tracks)
    tracks.each do |track| # Author - Name 
      author, name = track.split(' - ')
      @playlist.each_index do |i|
        @playlist.delete_at(i) if @playlist[i].author == author and @playlist[i].name == name
      end
    end 
  end
  
  def play(track)
    puts @playlist.first.info
    @adapter = MusicboxAdapter.new
    @adapter.play(@playlist[track].filename)
  end
end