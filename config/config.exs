# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :poc_recaptcha, PocRecaptchaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "GrJua1LiiVyBYS2nM/b/vBpvXY/6dc7cBG7NmUV2Z+L+1VFjkqR7y61QXyQdFhaH",
  render_errors: [view: PocRecaptchaWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PocRecaptcha.PubSub, adapter: Phoenix.PubSub.PG2]

config :recaptcha,
  public_key: {:system, :string, "RECAPTCHA_SITE_KEY_LOCALHOST"},
  secret: {:system, :string, "RECAPTCHA_SECRET_LOCALHOST"}

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
