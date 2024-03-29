# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

# Configures the endpoint
config :portfolio, PortfolioWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ex9sZgfr2kcgn4ENeYg7bJkEOCE4qZpZJS0d/KOlGwfSGrvd7HJDcoqLOPbTe12S",
  render_errors: [view: PortfolioWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Portfolio.PubSub

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
