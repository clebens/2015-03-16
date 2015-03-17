def str_to_coord(str)
  output = []
  str.split(",").each do |i|
    output.push(i.to_i)
  end
  return output
end

def coords_to_str(coords)
  return "#{coords[0]},#{coords[1]},#{coords[2]}"
end

def vec_add(arr1, arr2)
  [arr1[0] + arr2[0], arr1[1] + arr2[1], arr1[2] + arr2[2]]
end

class Cli
  attr_accessor :input, :output

  def initialize
    @input = $stdin
    @output = $stdout
  end
end

