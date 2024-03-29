import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :portfolio, PortfolioWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
