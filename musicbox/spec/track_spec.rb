require 'rubygems'
require 'spec'
require File.expand_path(File.dirname(__FILE__) + '/../lib/track')

describe Track do
  
  before(:each) do
    @track = Track.new
  end
  
  # он должен проверить существует ли файл который мы собираемся проигрывать
  it "should check if the file we are going to play exists" do
    @track.filename=('/Users/dig/Music/iTunes/iTunes\ Music/Miles\ Davis/Kind\ Of\ Blue/01\ So\ Wh____t.m4a')
    @track.filename.should be_nil
    
    @track.filename = '/Users/dig/Music/iTunes/iTunes Music/Miles Davis/Kind Of Blue/01 So What.m4a'
    @track.filename.should_not be_nil
  end
  
  it "should assing all info when initializing" do
    # TODO: сделать так чтобы несуществущие путь не присваивался
    song1 = Track.new({:name => "Never Coming Home", :author => 'Sting', :filename => 'haha_not_valid_path'})
    song1.name.should   == 'Never Coming Home'
    song1.author.should == 'Sting'
    song1.filename.should_not be_nil
  end
    
  it "should save track's author name" do
    @track.author=("Sting")
    @track.author.should == "Sting"
  end
  
  it "should save track name" do
    @track.name = "Song"
    @track.name.should == "Song"
  end

  it "should know song duration" do
    @track.duration.should =='3:50'
  end
  
  it "should display info about the song" do
    @track.name   = "Song"
    @track.author = "Sting"
    @track.info.should == "Sting - Song, 3:50"
  end

end