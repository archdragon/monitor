defmodule Monitor.Endpoint do
  use Phoenix.Endpoint, otp_app: :monitor

  plug Plug.Static,
    at: "/", from: :monitor

  plug Plug.Logger

  # Code reloading will only work if the :code_reloader key of
  # the :phoenix application is set to true in your config file.
  plug Phoenix.CodeReloader

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Poison

  plug Plug.MethodOverride
  plug Plug.Head

  plug Plug.Session,
    store: :cookie,
    key: "_monitor_key",
    signing_salt: "G3eP0+4b",
    encryption_salt: "sBur27Ux"

  plug :router, Monitor.Router
end
