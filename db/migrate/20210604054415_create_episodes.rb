class CreateEpisodes < ActiveRecord::Migration[6.1]
  def change
    create_table :episodes do |t|
      t.string :title
      t.string :description
      t.string :url
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
