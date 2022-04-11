class CreateCreatecities < ActiveRecord::Migration[7.0]
  def change
    create_table :createcities do |t|
      t.string :name
      t.string :country
      t.text :highlights

      t.timestamps
    end
  end
end
