class CreateTeachers < ActiveRecord::Migration[5.0]
  def change
    create_table :teachers do |t|
      t.string :title
      t.string :description
        t.string :image

      t.timestamps
    end
  end
end
