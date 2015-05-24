class DestinationsParser < Nokogiri::XML::SAX::Document
  
  TAXONOMY_ELEM_NAME = 'node'
  TAXONOMY_ID_ATTR_NAME = 'atlas_node_id' 
  GEO_ID_ATTR_NAME = 'geo_id'
  ETHYL_ID_ATTR_NAME = 'ethyl_content_object_id'

  attr_reader :nodes

  def initialize
    @nodes = []
  end


  def start_element(name, attrs = [])
    if name == NODE_ELEM_NAME
      att = Hash[attrs]
      node = Taxonomy.new(@parents.last, att[TAXONOMY_ID_ATTR_NAME], att[ETHYL_ID_ATTR_NAME], att[GEO_ID_ATTR_NAME])
      @nodes.push(node)
      @parents.push(node)
    end
  end

  def characters(str)
    if @parents.last and !str.strip.empty?
      @parents.last.name = str
    end
  end

  def end_element(name)
    if name == NODE_ELEM_NAME
      @parents.pop
    end
  end
end






class TaxonomySource

  def initialize(file_name)
    @file_name = file_name
  end

  def parse
    taxonomy = TaxonomyParser.new
    parser = Nokogiri::XML::SAX::Parser.new(taxonomy)
    parser.parse_file(@file_name)
    puts taxonomy.nodes
    taxonomy.nodes
  end

end