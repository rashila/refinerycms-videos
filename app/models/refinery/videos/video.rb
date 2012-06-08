module Refinery
  module Videos
    class Video < Refinery::Core::BaseModel
      self.table_name = 'refinery_videos'

      attr_accessible :name, :position

      acts_as_indexed :fields => [:name, :org_file_path, :type, :conv_file_path]

      validates :name, :presence => true, :uniqueness => true
    end
  end
end
