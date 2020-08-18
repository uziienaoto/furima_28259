class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string        :postal_code      ,null:false
      t.integer       :prefecture       ,null:false
      t.string        :city             ,null:false
      t.string        :address          ,null:false
      t.string        :building_name
      t.string        :phone_number     ,null:false
      t.references    :item             ,null:false, foreign_key: true
    end
  end
end
