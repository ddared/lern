require 'rubygems'
require 'spec'
require File.expand_path(File.dirname(__FILE__) + '/../lib/track')
require File.expand_path(File.dirname(__FILE__) + '/../lib/musicbox')
require File.expand_path(File.dirname(__FILE__) + '/../lib/musicboxadapter')


describe MusicboxAdapter do
  
  it "should play music" do
    #@song1 = Track.new({:name => "Never Coming Home", :author => 'Sting', :filename => '~/sites/lern/musicbox/music/Jimmy.mp3'})
    # запуск spec musicboxadapter_spec.rb
    @song1 = Track.new({:name => "Never Coming Home", :author => 'Sting', :filename => '../music/Jimmy.mp3'})
    @musicbox = MusicBox.new
    @musicbox.add(@song1)
    @musicbox.play(0)
  end
=begin
  Directory: /Users/dig/sites/lern/musicbox/music/
  Playing MPEG stream from Jimmy.mp3 ...
  MPEG 1.0 layer III, 192 kbit/s, 44100 Hz joint-stereo
=end
end