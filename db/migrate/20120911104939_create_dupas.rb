class CreateDupas < ActiveRecord::Migration
  def change
    create_table :dupas do |t|
      t.string :nazwa

      t.timestamps
    end
  end
end
