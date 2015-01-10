use Mix.Config

config :monitor, Monitor.Endpoint,
  http: [port: System.get_env("PORT") || 4001]
