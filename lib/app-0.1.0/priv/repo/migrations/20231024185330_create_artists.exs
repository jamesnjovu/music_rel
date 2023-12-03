defmodule App.Repo.Migrations.CreateArtists do
  use Ecto.Migration

  def change do
    create table(:artists) do
      add :name, :string, size: 80
      add :description, :string, size: 80
      add :image_uri, :string, size: 280
      add :status, :integer, default: 1

      timestamps(type: :utc_datetime)
    end
  end
end
