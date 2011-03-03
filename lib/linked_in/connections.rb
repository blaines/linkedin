module LinkedIn
  class Connections < LinkedIn::Base

    def connections
      @doc.map do |profile|
        profile = Profile.new(profile) unless profile.blank?
      end
    end

    def profiles
      connections
    end

  end
end
