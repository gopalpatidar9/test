class Articlas < ActiveRecord::Migration[7.0]
  def change
    create_table :articals do |t|
      t.string :title
      t.string :discription
      
    end
  end
end
