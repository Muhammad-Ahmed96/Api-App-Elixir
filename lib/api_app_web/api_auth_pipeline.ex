defmodule ApiAppWeb.ApiAuthPipeline do
  use Guardian.Plug.Pipeline, otp_app: :api_app,
    module: ApiApp.Guardian,
    error_handler: ApiAppWeb.ApiAuthErrorHandler

  plug Guardian.Plug.VerifyHeader, realm: "Bearer"
  plug Guardian.Plug.EnsureAuthenticated
  plug Guardian.Plug.LoadResource
end
