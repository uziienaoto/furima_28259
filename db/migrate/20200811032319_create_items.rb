class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string         :name               , null: false
      t.integer        :category_id        , null: false
      t.integer        :condition_id       , null: false
      t.integer        :delivery_fee_id    , null: false
      t.integer        :ship_from_id       , null: false
      t.integer        :days_until_ship_id , null: false
      t.text           :content            , null: false
      t.integer        :price              , hull: false
      t.references     :user               , null: false
    end
  end
end

