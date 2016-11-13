# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :congressional_goblin,
  ecto_repos: [CongressionalGoblin.Repo]

# Configures the endpoint
config :congressional_goblin, CongressionalGoblin.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "efWZgrveBRAO1XK4h2CO8bSipgUFWzkBdjQ9ZD7OtsUTslO9tA2cYLcjJMbl90ZC",
  render_errors: [view: CongressionalGoblin.ErrorView, accepts: ~w(html json)],
  pubsub: [name: CongressionalGoblin.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
