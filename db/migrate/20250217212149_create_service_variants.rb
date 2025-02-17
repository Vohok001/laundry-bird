class CreateServiceVariants < ActiveRecord::Migration[7.1]
  def change
    create_table :service_variants do |t|
      t.references :service, null: false, foreign_key: true
      t.string :name
      t.decimal :price

      t.timestamps
    end
  end
end
