class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.string :pro_tip_url

      t.timestamps null: false
    end
  end
end
