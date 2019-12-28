class Dog
  attr_accessor :id, :name, :breed

  def initialize(arg)
    arg = {id => nil, name: => "#{name}", "#{breed:}"}
    @id = id
    @name = name
    @breed = breed
  end
end
