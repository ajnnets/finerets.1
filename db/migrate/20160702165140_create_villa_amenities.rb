class CreateVillaAmenities < ActiveRecord::Migration
  def change
    create_table :villa_amenities do |t|
      t.references :amenity, index: true
      t.references :villa, index: true

      t.timestamps
    end
  end
end
