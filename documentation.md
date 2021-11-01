
End Point: /api/v1/sign_up
Type: POST
body: 
  {
    "user": {
      "email": "email@example.com",
      "password": "12345678",
      "password_confirmation": "12345678"
    }
  }

Return: JWT token

===========================================================

End Point: /api/v1/sign_in
Type: POST
body: 
  {
    "user": {
      "email": "email@example.com",
      "password": "12345678",
    }
  }

Return: JWT token

===========================================================

End Point: /api/v1/employees
Type: GET
params: page=2 (to get employees of page 2 )
i have set default pagination to 2

Return: Retrun all the employees with pagination

===========================================================

End Point: /api/v1/employees
Type: POST
body: 
  {
    "employee": {
      "name": "employee_name",
      "age": "28",
    }
  }

Return: return uuid of employee

===========================================================

End Point: /api/v1/employees/uuid
Type: GET
body: 
  {
    "employee": {
      "name": "employee_name",
      "age": "28",
    }
  }

Return: return employee object

===========================================================

End Point: /api/v1/employees/uuid
Type: DELETE

===========================================================



