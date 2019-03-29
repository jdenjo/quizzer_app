class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.text :description
      t.integer :solution_id
      t.references :test, foreign_key: true

      t.timestamps
    end
  end
end
