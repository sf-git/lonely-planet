class Taxonomy
  attr_reader :id, :ethyl_id, :geo_id, :nodes, :parent
  attr_accessor :name

  def initialize(parent, id, ethyl_id, geo_id)
    @parent = parent
    @id = id
    @ethyl_id = ethyl_id
    @geo_id = geo_id
    @nodes = []
    @name = nil
  end

  def add_node(child)
    @nodes << child
  end

  def to_s
    "Node [#{@id}, #{@name}, #{@ethyl_id}, #{@geo_id}, #{@nodes.length}, #{parent ? parent.name : nil}]"
  end

end