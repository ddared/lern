require 'rubygems'
require 'spec'
require File.expand_path(File.dirname(__FILE__) + '/../lib/track')
require File.expand_path(File.dirname(__FILE__) + '/../lib/musicbox')
require File.expand_path(File.dirname(__FILE__) + '/../lib/musicboxadapter')


describe MusicboxAdapter do
  
  it "should play music" do
    @song1 = Track.new({:name => "Never Coming Home", :author => 'Sting', :filename => '/Users/dig/Music/iTunes/iTunes Music/Miles Davis/Kind Of Blue/01 So What.m4a'})
    @musicbox = MusicBox.new
    @musicbox.add(@song1)
    @musicbox.play(0)
  end
  
end