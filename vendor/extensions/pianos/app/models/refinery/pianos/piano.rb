module Refinery
  module Pianos
    class Piano < Refinery::Core::BaseModel
      self.table_name = 'refinery_pianos'

      attr_accessible :name, :dimensions, :manufactured_on, :upright, :photo_id, :description, :position

      acts_as_indexed :fields => [:name, :dimensions, :description]

      validates :name, :presence => true, :uniqueness => true

      belongs_to :photo, :class_name => '::Refinery::Image'
    end
  end
end
