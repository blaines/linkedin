module LinkedIn
  class Connections

    def initialize(*args,&block)
      @profiles = args.first.class == Array ? args.shift.map {|p| Profile.new(p['siteStandardProfileRequest'])} : args.shift
      return @profiles
    end

  end
end
