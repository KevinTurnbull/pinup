class Artist < ActiveRecord::Base

  #######################
  ### Artist          ###
  #######################
  ### name:   string  ###
  ### events: [Event] ###
  ### venues: [Venue] ###
  #######################


  ### ID

  # obfuscate_id



  ### NAME

  before_save :to_lower_case
  


  #### EVENTS

  has_and_belongs_to_many :events, :uniq => true



  ### VENUES

  has_many :venues, -> { uniq }, through: :events



  ### MISC AND UTILITY

  def to_s
    "#{name.titleize unless name.nil? }"
  end

  private



    ### NAME

    def to_lower_case
      self.name = name.downcase unless name.nil?
    end
end
