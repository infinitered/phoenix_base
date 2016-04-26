use Mix.Config

# Configure endpoint with secret key
config :phoenix_base, PhoenixBase.Endpoint,
  secret_key_base: System.get_env("SECRET_KEY_BASE")

# Configure your database
config :phoenix_base, PhoenixBase.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: System.get_env("DATABASE_URL"),
  pool_size: 20

# Default SMTP adapter, use the appropriate adapter
# for your project. All adapters are listed here:
#
# https://hexdocs.pm/swoosh/Swoosh.Mailer.html
config :phoenix_base, Phoenix.Mailer,
  adapter: Swoosh.Adapters.SMTP,
  relay: "smtp.example.com",
  username: {:system, "SMTP_USERNAME"},
  password: {:system, "SMTP_PASSWORD"},
  tls: :always
