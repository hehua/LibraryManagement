class CreatePists < ActiveRecord::Migration
  def self.up
    create_table :pists do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :pists
  end
end
