class CreateRentals < ActiveRecord::Migration[6.0]
  def change
    create_table :rentals do |t|
      t.date :begin_date
      t.date :end_date
      t.integer :rental_price
      t.text :costumer_review
      t.text :renter_review
      t.references :product, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
