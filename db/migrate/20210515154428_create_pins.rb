class CreatePins < ActiveRecord::Migration[6.0]
  def change
    create_table :pins do |t|
      t.string :code, :limit => 7
      t.string :name
      t.string :tehsil, :limit => 100
      t.string :district, :limit => 100
      t.string :state, :limit => 50
    end
    [:code, :name, :tehsil, :district].each do |column|
      add_index :pins, column
    end
  end
end
