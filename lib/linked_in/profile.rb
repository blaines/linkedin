module LinkedIn
  class Profile < LinkedIn::Base
    
    property :error_code, :from => :errorCode
    
    property :honors
    property :url
    property :site_standard_profile_request, :from => :siteStandardProfileRequest
    property :api_standard_profile_request, :from => :apiStandardProfileRequest
    property :interests
    property :relation_to_viewer, :from => :relationToViewer
    property :location
    property :last_name, :from => :lastName
    property :positions
    property :im_accounts, :from => :imAccounts
    property :educations
    property :num_connections_capped, :from => :numConnectionsCapped
    property :date_of_birth, :from => :dateOfBirth
    property :headline
    property :id
    property :member_url_resources, :from => :memberUrlResources
    property :main_address, :from => :mainAddress
    property :three_past_positions, :from => :threePastPositions
    property :specialties
    property :three_current_positions, :from => :threeCurrentPositions
    property :twitter_accounts, :from => :twitterAccounts
    property :recommendations_received, :from => :recommendationsReceived
    property :first_name, :from => :firstName
    property :summary
    property :proposal_comments, :from => :proposalComments
    property :current_status_timestamp, :from => :currentStatusTimestamp
    property :current_status, :from => :currentStatus
    property :current_share, :from => :currentShare
    property :connections
    property :phone_numbers, :from => :phoneNumbers
    property :public_profile_url, :from => :publicProfileUrl
    property :num_connections, :from => :numConnections
    property :num_recommenders, :from => :numRecommenders
    property :associations
    property :distance
    property :industry
    property :picture_url, :from => :pictureUrl
    
    def connections
      @connections ||= self[:connections]['values'].map {|p| Profile.new(p)}
    end
    
    def name
      "#{first_name} #{last_name}"
    end

  end
end
