class MusicboxAdapter
  
  def play(filepath)
    `mpg321 #{filepath}`
  end
  
end