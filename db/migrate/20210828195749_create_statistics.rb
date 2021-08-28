class CreateStatistics < ActiveRecord::Migration[6.1]
  def change
    create_table :statistics do |t|
      t.string :ip
      t.integer :click

      t.timestamps
    end
  end
end
