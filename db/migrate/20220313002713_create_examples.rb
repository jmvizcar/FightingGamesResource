class CreateExamples < ActiveRecord::Migration[6.1]
  def change
    create_table :examples do |t|

      t.text :description
      t.belongs_to :term, index: true
      t.timestamps
    end
  end
end
