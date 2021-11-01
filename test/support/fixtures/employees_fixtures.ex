defmodule ApiApp.EmployeesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `ApiApp.Employees` context.
  """

  @doc """
  Generate a employee.
  """
  def employee_fixture(attrs \\ %{}) do
    {:ok, employee} =
      attrs
      |> Enum.into(%{
        age: "some age",
        name: "some name"
      })
      |> ApiApp.Employees.create_employee()

    employee
  end
end
