class CreateLinks < ActiveRecord::Migration[6.1]
  def change
    create_table :links do |t|
      t.string :url, null: false
      t.string :code, null: false, default: '', limit: 10
      t.timestamps
    end
  end
end
