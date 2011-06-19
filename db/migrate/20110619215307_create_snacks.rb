class CreateSnacks < ActiveRecord::Migration
  def self.up
    create_table :snacks do |t|
      t.boolean :healthy
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :snacks
  end
end
