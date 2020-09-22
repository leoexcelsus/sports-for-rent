class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.text :costumer_content
      t.text :product_content
      t.references :rental, null: false, foreign_key: true

      t.timestamps
    end
  end
end
