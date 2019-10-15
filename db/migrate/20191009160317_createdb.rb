class Createdb < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.column :name, :string
      t.column :info, :string
      t.column :moves, :json
    end
    create_table :move do |t|
      t.column :name, :string
      t.column :movebtns, :string
      t.column :frame_data, :json
      t.references :characters, foreign_key: true
    end
  end
end