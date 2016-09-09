use Mix.Config

# Configure endpoint with secret key
config :phoenix_base, PhoenixBase.Endpoint,
  secret_key_base: System.get_env("SECRET_KEY_BASE"),
  url: [
    scheme: System.get_env("URL_SCHEME"),
    host: System.get_env("URL_HOST"),
    port: System.get_env("URL_PORT")
  ]

# More options: https://github.com/elixir-lang/plug/blob/master/lib/plug/ssl.ex
if System.get_env("URL_SCHEME") == "https" do
  config :phoenix_base, PhoenixBase.Endpoint,
    force_ssl: [rewrite_on: [:x_forwarded_proto]]
end

# Configure your database
config :phoenix_base, PhoenixBase.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: System.get_env("DATABASE_URL"),
  pool_size: 20

# Default SMTP adapter, use the appropriate adapter
# for your project. All adapters are listed here:
#
# https://hexdocs.pm/swoosh/Swoosh.Mailer.html
config :phoenix_base, PhoenixBase.Mailer,
  adapter: Swoosh.Adapters.SMTP,
  relay: "smtp.example.com",
  username: {:system, "SMTP_USERNAME"},
  password: {:system, "SMTP_PASSWORD"},
  tls: :always
