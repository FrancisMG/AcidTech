module Ahoy
  class Event < ActiveRecord::Base
    include Ahoy::Properties

    self.table_name = "ahoy_events"

    belongs_to :admin, optional: true
    belongs_to :visit
  
  end
end
