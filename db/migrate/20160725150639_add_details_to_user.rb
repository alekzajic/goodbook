class AddDetailsToUser < ActiveRecord::Migration[5.2]
  def change
    change_table :users do |t|
      t.string :name
      t.date  :birthday
      t.string :city
      t.text :about
    end
  end

end
