def str_to_coord(str)
  output = []
  str.split(",").each do |i|
    output.push(i.to_i)
  end
  return output
end

class Cli
  attr_accessor :input, :output

  def initialize
    @input = $stdin
    @output = $stdout
  end
end

