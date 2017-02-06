class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.integer :page_number
      t.binary :image
      t.references :slide
      t.timestamps
    end
  end
end
