class ChangeCharacterAndMoveTable < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.column :fullname, :string
      t.column :displayName, :string
      t.column :label, :string
      t.column :properties, :json
      t.column :movelist, :json
    end
    create_table :moves do |t|
      t.column :name, :string
      t.column :movebtns, :string
      t.column :frame_data, :json
      t.references :character, foreign_key: true
    end
  end
end
