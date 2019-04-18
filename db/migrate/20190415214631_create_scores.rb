class CreateScores < ActiveRecord::Migration[5.1]
  def change
    create_table :scores do |t|
      t.belongs_to :user, foreign_key: true
      t.integer :user_score

      t.timestamps
    end
  end
end
