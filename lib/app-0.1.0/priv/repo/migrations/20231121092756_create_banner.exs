defmodule App.Repo.Migrations.CreateBanner do
  use Ecto.Migration

  def change do
    create table(:banner) do
      add :status, :integer, default: 1
      add :title, :string, size: 1
      add :image, :string, size: 281
      add :description, :string, size: 281

      timestamps(type: :utc_datetime)
    end
  end
end
