class AddDetailToAccountbooks < ActiveRecord::Migration
  def self.up
    add_column :accountbooks, :detail, :string
  end

  def self.down
    remove_column :accountbooks, :detail
  end
end
