class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string         :name            , null: false
      t.integer        :category        , null: false
      t.integer        :condition       , null: false
      t.integer        :delivery_fee    , null: false
      t.integer        :ship_from       , null: false
      t.integer        :days_until_ship , null: false
      t.text           :content         , null: false
      t.integer        :price           , hull: false
      t.references     :user            , null: false
      t.timestamps
    end
  end
end
