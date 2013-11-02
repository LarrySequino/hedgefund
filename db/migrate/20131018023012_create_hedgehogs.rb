class CreateHedgehogs < ActiveRecord::Migration
  def change
    create_table :hedgehogs do |t|
        t.string :name
        t.integer :age
      t.timestamps
    end
  end
end
