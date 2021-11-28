class CreateGroupposts < ActiveRecord::Migration[6.1]
  def change
    create_table :groupposts do |t|
      t.references :user, null: false, foreign_key: true
      t.references :group, null: false, foreign_key: true
      t.text :content
      t.string :image

      t.timestamps
    end
  end
end
