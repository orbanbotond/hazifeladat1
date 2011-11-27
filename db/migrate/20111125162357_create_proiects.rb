class CreateProiects < ActiveRecord::Migration
  def change
    create_table :proiects do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
