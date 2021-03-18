# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :proyecto_ricoh_norte,
  ecto_repos: [ProyectoRicohNorte.Repo]

# Configures the endpoint
config :proyecto_ricoh_norte, ProyectoRicohNorteWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "9bKRqTuV70DGmRBo7iS6/6BOwquuwQqXiWR/U0395jtOsWxZKC8utE16U2hpo6qK",
  render_errors: [view: ProyectoRicohNorteWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: ProyectoRicohNorte.PubSub,
  live_view: [signing_salt: "fdRcl7hs"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
