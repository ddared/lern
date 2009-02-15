require 'rubygems'
require 'spec'
require File.expand_path(File.dirname(__FILE__) + '/../lib/track')
require File.expand_path(File.dirname(__FILE__) + '/../lib/musicbox')

class MusicBox
  attr_reader :playlist
end

describe MusicBox do
  
  before(:each) do
    @musicbox = MusicBox.new  
  end

  #  он должен добавлять трек в плейлист
  it "should add track to playlist" do
    song1 = Track.new({:name => "Never Coming Home", :author => 'Sting', :filename => 'haha_not_valid_path'})
    @musicbox.add(song1)
    @musicbox.playlist.first.author.should == 'Sting'
  end
  
  # он должен удалять трек из плейлиста
  it "should delete track from playlist"
  
  # он должен играть выбранный трек
  it "should play the selected track"
    
  
  
  
  
end