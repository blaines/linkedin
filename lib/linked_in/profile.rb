module LinkedIn
  class Profile < LinkedIn::Base
    
    def method_missing(name)
      @doc.send(name.to_sym)
    end
    
    def connections
      @connections ||= Connections.new(@doc.connections[:values]).connections
    end
    
  end
end
