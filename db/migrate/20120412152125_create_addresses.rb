class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :country
      t.string :city
      t.string :mobile_phone
      t.references :addressable, :polymorphic => true
      t.timestamps
    end
  end
end
