class CreateSeeForYourselves < ActiveRecord::Migration[5.1]
  def change
    create_table :see_for_yourselves do |t|
      t.string :question
      t.text :answer

      t.timestamps
    end
  end
end
