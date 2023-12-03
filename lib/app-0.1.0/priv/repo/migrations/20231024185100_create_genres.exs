defmodule App.Repo.Migrations.CreateGenres do
  use Ecto.Migration

  def change do
    create table(:genres) do
      add :name, :string, size: 80
      add :description, :string, size: 180
      add :image_uri, :string, size: 280
      add :status, :integer, default: 1

      timestamps(type: :utc_datetime)
    end
  end
end
