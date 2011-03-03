module LinkedIn
  class Base

    def self.from_json(doc)
      new(Hashie::Mash.new(MultiJson.decode(doc)))
    end

    def initialize(doc)
      @doc = doc
    end

  end
end
