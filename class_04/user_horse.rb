class User_horse	

	attr_accessor :name, :position

  CHEAT_CODES = ["carrot", "stick", "go"]

	def initialize(name)
		@name = name
    @position = 0
	end
  
  def move_user  
    @position += Random.rand(4)
    @position.times do |x|
      print "*"
    end
    print @name
  end

  def cheat_move
    @position += 8
    @position.times do |x|
      print "*"
    end
    print @name
  end
end