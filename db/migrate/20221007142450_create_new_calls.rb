class CreateNewCalls < ActiveRecord::Migration[7.0]
  def change
    create_table :new_calls do |t|
      t.string :date
      t.string :local
      t.string :name
      t.string :request

      t.timestamps
    end
  end
end
