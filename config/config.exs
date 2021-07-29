# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :try_react, TryReactWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "6ub1SB8toTaYPA+cObLuwvMBlP5bMH0JVYTpmE7VPKeMKCqpcDiRZyDQWdqr3/B7",
  render_errors: [view: TryReactWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: TryReact.PubSub,
  live_view: [signing_salt: "zOkPrPGl"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
