defmodule ApiAppWeb.EmployeeController do
  use ApiAppWeb, :controller

  alias ApiApp.Employees
  alias ApiApp.Employees.Employee

  action_fallback ApiAppWeb.FallbackController

  def index(conn, params) do
    page = Employees.list_employees(params)
    # render(conn, "index.json", employees: employees)
    render(conn, "index.json", employees: page.entries, page: page)
  end

  def create(conn, %{"employee" => employee_params}) do
    with {:ok, %Employee{} = employee} <- Employees.create_employee(employee_params) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", Routes.employee_path(conn, :show, employee))
      |> render("show_id.json", employee: employee)
    end
  end

  def show(conn, %{"id" => id}) do
    employee = Employees.get_employee!(id)
    render(conn, "show.json", employee: employee)
  end

  def update(conn, %{"id" => id, "employee" => employee_params}) do
    employee = Employees.get_employee!(id)

    with {:ok, %Employee{} = employee} <- Employees.update_employee(employee, employee_params) do
      render(conn, "show.json", employee: employee)
    end
  end

  def delete(conn, %{"id" => id}) do
    employee = Employees.get_employee!(id)

    with {:ok, %Employee{}} <- Employees.delete_employee(employee) do
      send_resp(conn, :no_content, "")
    end
  end
end
