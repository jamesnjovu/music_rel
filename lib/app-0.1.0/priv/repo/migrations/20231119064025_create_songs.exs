defmodule App.Repo.Migrations.CreateSongs do
  use Ecto.Migration

  def change do
    create table(:songs) do
      add :title, :string
      add :status, :integer, default: 1
      add :duration, :integer, default: 0
      add :file_size, :integer, default: 0
      add :file_uri, :string, default: "/"
      add :release_date, :naive_datetime
      add :track_number, :integer, default: 1
      add :lyrics, :string
      add :play_count, :integer, default: 0
      add :like_count, :integer, default: 0

      add :artist_id, references(:artists, on_delete: :nothing)
      add :album_id, references(:albums, on_delete: :nothing)
      add :genre_id, references(:genres, on_delete: :nothing)

      timestamps(type: :utc_datetime)
    end

    create index(:songs, [:artist_id])
    create index(:songs, [:album_id])
  end
end
