class CreatePins < ActiveRecord::Migration
  def self.up
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

  def self.down
    [:code, :name, :tehsil, :district].each do |column|
      remove_index :pins, column
    end
    drop_table :pins
  end
end
