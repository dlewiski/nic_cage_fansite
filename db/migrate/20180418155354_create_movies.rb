class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.column :name, :string
      t.column :description, :string
      t.column :rating, :integer

      t.timestamps
    end
  end
end
