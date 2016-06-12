class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :address
      t.text :intro
      t.text :about
      t.text :policy
      t.text :terms

      t.timestamps null: false
    end
  end
end
