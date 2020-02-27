# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :research_app,
  ecto_repos: [ResearchApp.Repo]

# Configures the endpoint
config :research_app, ResearchAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "XTRO7g8Ixl4uiezgtPAGf6vggph3rcb2mMNgiExfPEUP2S7+kgnk+YyIAoXgUbC7",
  render_errors: [view: ResearchAppWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ResearchApp.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "CjUO4A5X"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
