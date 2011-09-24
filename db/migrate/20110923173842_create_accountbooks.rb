class CreateAccountbooks < ActiveRecord::Migration
  def self.up
    create_table :accountbooks do |t|
      t.string :subject
      t.integer :price
      t.date :date

      t.timestamps
    end
  end

  def self.down
    drop_table :accountbooks
  end
end
