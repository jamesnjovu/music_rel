defmodule App.Repo.Migrations.CreatePlaylist do
  use Ecto.Migration

  def change do
    create table(:playlists) do
      add :name, :string, size: 80
      add :description, :string, size: 280
      add :public, :boolean, detault: true
      add :number_of_tracks, :integer, default: 0
      add :duration, :integer, default: 0
      add :cover_art, :string, size: 280
      add :followers_count, :integer, default: 1
      add :status, :integer, default: 1

      add :user_id, references(:users, on_delete: :nothing)

      timestamps(type: :utc_datetime)
    end

    create index(:playlists, [:user_id])
  end
end
