class CreateSlides < ActiveRecord::Migration[5.0]
  def change
    create_table :slides do |t|
      t.string :title
      t.integer :current_page
      t.references :user
      t.timestamps
    end
  end
end
