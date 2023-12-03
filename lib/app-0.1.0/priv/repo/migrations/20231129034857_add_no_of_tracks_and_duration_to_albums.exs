defmodule App.Repo.Migrations.AddNoOfTracksAndDurationToAlbums do
  use Ecto.Migration

  def up do
    alter table(:albums) do
      add :songs_count, :integer, null: false, default: 0
      add :duration, :integer, null: false, default: 0
    end

    execute("
        UPDATE albums set songs_count =
          (SELECT count (*) from songs
            where songs.album_id = albums.id)")

    execute("
        UPDATE albums set duration =
          (SELECT count(songs.duration) from songs
            where songs.album_id = albums.id)")
  end

  def down do
    alter table(:albums) do
      remove :songs_count
      remove :duration
    end
  end
end
