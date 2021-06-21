class CreateGuides < ActiveRecord::Migration[6.1]
  def change
    create_table :guides do |t|
      t.string :email
      t.string :city_id

      t.timestamps
    end
  end
end
