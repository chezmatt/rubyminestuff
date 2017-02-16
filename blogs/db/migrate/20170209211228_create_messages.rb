class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.references :post
      t.string :author
      t.text :message
      t.datetime
    end
  end
end
