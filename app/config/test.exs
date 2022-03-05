import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :elixir_lang_tokyo, ElixirLangTokyo.Repo,
  username: "tokyoex",
  password: "beamlangtokyo",
  hostname: "#{System.get_env("MIX_TEST_DB_HOST")}",
  database: "elixir_lang_tokyo_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :elixir_lang_tokyo, ElixirLangTokyoWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "qiIRfBCr41hrxcOrFCkPBaPLAcqKTIy3y5afIwKfPMVkKrKXD0y+oA+3wrZMARk5",
  server: false

# In test we don't send emails.
config :elixir_lang_tokyo, ElixirLangTokyo.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
