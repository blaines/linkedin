module LinkedIn
  class Base < Hashie::Trash
    
    property :error_code, :from => :errorCode
    
    def initialize(*args,&block)
      hash = args.first.class == String ? MultiJson.decode(args.shift) : args.shift
      super(hash,*args,&block)
    end
    
  end
end
