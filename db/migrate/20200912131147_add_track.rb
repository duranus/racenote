class AddTrack < ActiveRecord::Migration[5.2]
  def change
    add_column  :posts, :track, :string
  end
end
