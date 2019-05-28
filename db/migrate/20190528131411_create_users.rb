class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :bio
      t.string :photo
      t.string :username
      t.timestamps
    end
  end
end
