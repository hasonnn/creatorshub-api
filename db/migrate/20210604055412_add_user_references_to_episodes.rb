class AddUserReferencesToEpisodes < ActiveRecord::Migration[6.1]
  def change
    add_reference :episodes, :user, foreign_key: true
  end
end
