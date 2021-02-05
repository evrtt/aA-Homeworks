class Map

  def initialize
    @map = []
  end

  def set(key, value)
    found = false
    @map.each do |el| 
      if el[0] == key
        found = true
        el[1] = value 
      end
    end
    @map << [key, value] unless found
  end

  def get(key)
    @map.each do |el|
      return el[1] if el[0] == key
    end
  end

  def delete(key)
    @map.each_with_index do |el, i|
      @map.delete_at(i) if el[0] == key
    end 
  end

  def show
    @map.dup
  end

end