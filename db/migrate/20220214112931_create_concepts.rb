class CreateConcepts < ActiveRecord::Migration[6.1]
  def change
    create_table :concepts do |t|

      t.references :game_series, polymorphic: true
      t.belongs_to :term, index: true
      t.timestamps
    end
  end
end
