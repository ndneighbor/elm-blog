# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :elm_blog,
  ecto_repos: [ElmBlog.Repo]

# Configures the endpoint
config :elm_blog, ElmBlog.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "mtMSJqJlzSyu69HmQUAdUNXaG9dyfZBRlDQGGk0IJgCGWRR370edaQHYj6RGVQnW",
  render_errors: [view: ElmBlog.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ElmBlog.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
