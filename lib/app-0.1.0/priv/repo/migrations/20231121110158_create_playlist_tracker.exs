defmodule App.Repo.Migrations.CreatePlaylistTracker do
  use Ecto.Migration

  def change do
    create table(:playlist_tracker) do
      add :position, :integer, default: 1
      add :played_at, :utc_datetime
      add :paused_at, :utc_datetime
      add :status, :integer, null: false, default: 1
      add :playlist_id, references(:playlists, on_delete: :nothing)
      add :song_id, references(:songs, on_delete: :nothing)
      add :user_id, references(:users, on_delete: :nothing)

      timestamps(type: :utc_datetime)
    end

    create index(:playlist_tracker, [:playlist_id])
    create index(:playlist_tracker, [:song_id])
    create index(:playlist_tracker, [:user_id])
  end
end
