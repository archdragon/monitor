# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :monitor, Monitor.Endpoint,
  url: [host: "localhost"],
  http: [port: System.get_env("PORT")],
  secret_key_base: "XaDTWdiQByGeKZXRebtp0jgqN2VqWi2DZZSgSEnEWeKo9vHRDNGI3+e/1BUotN0y",
  debug_errors: false

# Template
# config :phoenix, :template_engines,
#    haml: PhoenixHaml.Engine

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
