# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :elixir_lang_tokyo,
  ecto_repos: [ElixirLangTokyo.Repo]

# Configures the endpoint
config :elixir_lang_tokyo, ElixirLangTokyoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "nbsbGoHZz0/zuVtSebr2WWOmZb3ICmby7XnpTRMt08GpmV3LaxflSwRLb9QeU27b",
  render_errors: [view: ElixirLangTokyoWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: ElixirLangTokyo.PubSub,
  live_view: [signing_salt: "LnU9LGxd"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
