class CreateStatistics < ActiveRecord::Migration[6.1]
  def change
    create_table :statistics do |t|
      t.string :ip
      t.integer :clicks, :default => 0
      t.references :short_link, null: false, foreign_key: true

      t.timestamps
    end
  end
end
