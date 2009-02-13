require 'rubygems'
require 'spec'

class Duck #Can't even quack now
end

describe Duck do
  
  before(:each) do 
    @duck_mock = mock('duck')
    @duck_mock.should_receive(:quack).any_number_of_times.and_return("quack! quack!")
    @duck_mock.should_receive(:fly).any_number_of_times.and_return("fly away")
    @duck_mock.should_receive(:sex).any_number_of_times.and_return([@duck_mock.clone, @duck_mock.clone, @duck_mock.clone])
    Duck.should_receive(:new).any_number_of_times.once.and_return(@duck_mock)
    @duck = Duck.new
    
  end
   
   it "should quack" do
    @duck.quack.should == ("quack! quack!") 
  end

  it "should be able to fly" do
    @duck.fly.should == ("fly away")
  end

  it "should have sex with other ducks and produce more ducks" do
    
    @duck.sex.each do |child|
      child.quack.should == ("quack! quack!")
      child.fly.should   == ("fly away")
    end
  end
end
