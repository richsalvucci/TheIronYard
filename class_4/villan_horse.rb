class Villan_horse


	attr_accessor :name, :position

	def initialize(name)
		@name = name
    @position = 0
	end

  def move_villan
   @position += Random.rand(4)
   @position.times do |x|
      print "*"
    end
    print @name
  end

end
