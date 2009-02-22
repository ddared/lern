require 'rubygems'
require 'spec'
require File.expand_path(File.dirname(__FILE__) + '/../lib/track')
require File.expand_path(File.dirname(__FILE__) + '/../lib/musicbox')

class MusicBox
  attr_accessor :playlist
end

describe MusicBox do
  
  before(:each) do
    @musicbox = MusicBox.new
    @song1 = Track.new({:name => "Never Coming Home", :author => 'Sting', :filename => 'haha_not_valid_path'})
    @song2 = Track.new({:name => "Song", :author => 'Authot', :filename => 'haha_not_valid_path'})
    @song3 = Track.new({:name => "Any Song", :author => 'Author', :filename => 'haha_not_valid_path'})
    
  end

  #  он должен добавлять трек в плейлист
  it "should add track to playlist" do
    @musicbox.add(@song1)
    @musicbox.playlist.first.author.should == 'Sting'
  end
  it "should add many tracks to playlist" do
    @musicbox.add(@song1, @song2)
    @musicbox.playlist.length.should == 2
  end
  
  # он должен удалять трек из плейлиста
  it "should delete track from playlist by author and name" do
    @musicbox.add(@song1, @song2)
    @musicbox.delete("Authot - Song", "Sting - Never Coming Home")
    @musicbox.playlist.should be_empty
  end
  
  it "should only add objects that respond to :play" do
    @musicbox.add(@song1)
    @musicbox.add('not a song')
    @musicbox.playlist.first.info == "Sting - Never Coming Home, 3:50"
    @musicbox.playlist.at(1) == nil
  end
    
   #он должен играть выбранный трек
  it "should play the selected track" do
    @musicbox.add(@song1)
    @musicbox.add(@song2)
    @musicbox.add(@song3)
    @musicbox.playlist.at(1).info == "Authot - Song, 3:50"
  end
    
  after(:each) do
    @musicbox.playlist = []
  end
    
  
  
  
end