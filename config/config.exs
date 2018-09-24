# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :discuss,
  ecto_repos: [Discuss.Repo]

# Configures the endpoint
config :discuss, Discuss.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "yooOBZmRqBHvmYMpmWlMO2K5fUYmh9MP52ohL3JyqzArW6vgJDZAN8U1JttfPmLP",
  render_errors: [view: Discuss.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Discuss.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

config :ueberauth, Ueberauth,
  providers: [
    github: {Ueberauth.Strategy.Github, [default_scope: "user,publicrepo"]},
    vk: {Ueberauth.Strategy.VK, [default_scope: "email,"]}
  ]

config :ueberauth, Ueberauth.Strategy.Github.OAuth,
    client_id:  "459f7f2dc01798e76d01",
    client_secret: "668078337e92f60eba4f60a645eda0de7690c0dd"

  config :ueberauth, Ueberauth.Strategy.VK.OAuth,
    client_id: "6690645",
    client_secret: "cJAPmSKKMS3krR7jRGmx"
