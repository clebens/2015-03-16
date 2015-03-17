class Item
    attr_accessor :name

    def initialize(params)
        @name = params.fetch(:name, "Useless Junk")
    end
end


