defmodule ApiApp.Employees.Employee do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, Ecto.UUID, autogenerate: true}

  schema "employees" do
    field :age, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(employee, attrs) do
    employee
    |> cast(attrs, [:name, :age])
    |> validate_required([:name, :age])
  end
end
