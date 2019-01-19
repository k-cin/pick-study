module MusicVersions
  class Phonograph
    attr_reader :name
    def initialize(name)
      @name = name
    end
  end

  class EightTrack
    attr_reader :name
    def initialize(name)
      @name = name
    end
  end
end
