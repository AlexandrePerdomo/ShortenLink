class CreateLinkVisits < ActiveRecord::Migration[6.1]
  def change
    create_table :link_visits do |t|
      t.references :link
      t.timestamps
    end
  end
end
