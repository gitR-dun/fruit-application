class CreateFruits < ActiveRecord::Migration[5.1]
  def change
    create_table :fruits do |t|
      t.string :color
      t.string :name
      t.string :season
      t.string :taste

      t.timestamps
    end
  end
end
