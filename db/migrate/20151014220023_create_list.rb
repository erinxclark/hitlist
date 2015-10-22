class CreateList < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.column :item, :string
      t.column :location, :string
      t.column :when, :string

      t.timestamps

    end
  end
end
