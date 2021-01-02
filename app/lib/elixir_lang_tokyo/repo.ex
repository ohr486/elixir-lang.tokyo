defmodule ElixirLangTokyo.Repo do
  use Ecto.Repo,
    otp_app: :elixir_lang_tokyo,
    adapter: Ecto.Adapters.Postgres
end
