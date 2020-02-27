use Mix.Config

# Configure your database
config :research_app, ResearchApp.Repo,
  username: "postgres",
  password: "postgres",
  database: "research_app_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :research_app, ResearchAppWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
