class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, index: true

      t.timestamps null: false
    end
  end
end
