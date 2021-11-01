defmodule ApiApp.Repo.Migrations.CreateEmployees do
  use Ecto.Migration

  def change do
    create table(:employees, primary_key: false) do
      add :id, :uuid, primary_key: true, null: false
      add :name, :string
      add :age, :string

      timestamps()
    end
  end
end
