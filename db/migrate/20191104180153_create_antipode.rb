class CreateAntipode < ActiveRecord::Migration[5.2]
  def change
    create_table :antipodes do |t|
      t.string :location_name
    end
  end
end
