defmodule App.Repo.Migrations.CreatePlaylistContent do
  use Ecto.Migration

  def change do
    create table(:playlist_content) do
      add :position, :integer, default: 0

      add :playlist_id, references(:playlists, on_delete: :nothing)
      add :song_id, references(:songs, on_delete: :nothing)

      timestamps(type: :utc_datetime)
    end

    create index(:playlist_content, [:playlist_id])
    create index(:playlist_content, [:song_id])
  end
end
