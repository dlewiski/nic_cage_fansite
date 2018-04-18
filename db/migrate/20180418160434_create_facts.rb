class CreateFacts < ActiveRecord::Migration[5.2]
  def change
    create_table :facts do |t|
      t.string :title
      t.string :description
      t.integer :rating

      t.timestamps
    end
  end
end
