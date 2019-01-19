module MusicVersions
  class Cd
    attr_reader :name
    def initialize(name)
      @name = name
    end
  end

  class Cassette
    attr_reader :name
    def initialize(name)
      @name = name
    end
  end
end
