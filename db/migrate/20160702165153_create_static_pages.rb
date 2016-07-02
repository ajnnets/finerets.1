class CreateStaticPages < ActiveRecord::Migration
  def change
    create_table :static_pages do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
