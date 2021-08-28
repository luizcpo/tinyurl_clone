class CreateShortLinks < ActiveRecord::Migration[6.1]
  def change
    create_table :short_links do |t|
      t.string :url
      t.string :token

      t.timestamps
    end
  end
end
