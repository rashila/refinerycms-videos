class CreateVideosVideos < ActiveRecord::Migration

  def up
    create_table :refinery_videos do |t|
      t.string :name
      t.string :org_file_path
      t.string :type
      t.boolean :converted
      t.string :conv_file_path
      t.integer :size
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-videos"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/videos/videos"})
    end

    drop_table :refinery_videos

  end

end
