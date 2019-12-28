class Dog
  attr_accessor :id, :name, :breed

  def initialize(id = nil, name: "Caldwell", breed: "toy poodle")
    @id = id
    @name = name
    @breed = breed
  end
end
