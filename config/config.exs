# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :modest_greeter, ModestGreeter.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "6HJMS0Ax1v2Czhge8QJI0i5i7Jh3Tmy44mLVNN5OIlYpzTMCDJzmClsx1D4KQJBl",
  render_errors: [view: ModestGreeter.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ModestGreeter.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
