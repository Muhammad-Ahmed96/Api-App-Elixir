defmodule ApiAppWeb.EmployeeView do
  use ApiAppWeb, :view
  alias ApiAppWeb.EmployeeView

  def render("index.json", %{employees: employees}) do
    %{data: render_many(employees, EmployeeView, "employee.json")}
  end

  def render("show_id.json", %{employee: employee}) do
    %{data: render_one(employee, EmployeeView, "employee_id.json")}
  end

  def render("show.json", %{employee: employee}) do
    %{data: render_one(employee, EmployeeView, "employee.json")}
  end

  def render("employee.json", %{employee: employee}) do
    %{
      id: employee.id,
      name: employee.name,
      age: employee.age
    }
  end

  def render("employee_id.json", %{employee: employee}) do
    %{
      id: employee.id
    }
  end
end
