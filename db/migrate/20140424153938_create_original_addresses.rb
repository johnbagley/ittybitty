class CreateOriginalAddresses < ActiveRecord::Migration
  def change
    create_table :original_addresses do |t|
      t.string :original_url
      t.string :token

      t.timestamps
    end
  end
end
