class CreateNinjas < ActiveRecord::Migration[5.0]
  def change
    create_table :ninjas do |t|
      t.string :first_name
      t.string :last_name
      t.references :dojo, index:true
      t.timestamps
    end
  end
end
