class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :dictionary_word
      t.string :sorted_name
      t.timestamps
    end
  end
end
