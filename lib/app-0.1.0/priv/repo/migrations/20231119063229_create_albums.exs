defmodule App.Repo.Migrations.CreateAlbums do
  use Ecto.Migration

  def change do
    create table(:albums) do
      add :title, :string, size: 80
      add :status, :integer, default: 1
      add :cover_art, :string, size: 280
      add :description, :string, size: 280
      add :release_date, :naive_datetime

      add :artist_id, references(:artists, on_delete: :nothing)
      add :genreid, references(:genres, on_delete: :nothing)

      timestamps(type: :utc_datetime)
    end

    create index(:albums, [:artist_id])
  end

end
