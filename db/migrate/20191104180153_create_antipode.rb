class CreateAntipode < ActiveRecord::Migration[5.2]
  def change
    create_table :antipodes do |t|
      t.string :location_name
      t.string :forecast
      t.string :summary
      t.string :current_temperature
      t.string :search_location
    end
  end
end
