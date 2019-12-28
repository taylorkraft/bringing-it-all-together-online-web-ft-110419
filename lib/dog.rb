class Dog
  attr_accessor :id, :name, :breed

  def initialize(id: nil, name: "Caldwell", breed: "toy poodle")
    @id = id
    @name = name
    @breed = breed
  end

  def self.create_table
    sql = <<-SQL
    CREATE TABLE IF NOT EXISTS dogs (
    id INTEGER PRIMARY KEY,
    name TEXT,
    breed TEXT
    )
    SQL
    DB[:conn].execute(sql)
  end

  def self.drop_table
    sql = <<-SQL
    DROP TABLE dogs
    SQL
    DB[:conn].execute(sql)
  end

  def save
    if self.id
      self.update
    else
      sql = <<-SQL
      INSERT INTO dogs WHERE name = ?, breed = ?
      SQL
      DB[:conn].execute(sql)
  end

  def update
    sql = "UPDATE dogs WHERE name = ?, breed = ?"
    DB[:conn].execute(sql, self.name, self.breed)
  end
end
