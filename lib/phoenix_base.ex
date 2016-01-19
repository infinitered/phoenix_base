defmodule PhoenixBase do
  @moduledoc """
  The root supervisor of the app. This is a good place to provide an
  overview of your app's features and structure, since this doc is the
  default home page for your ExDoc documentation.
  """

  use Application

  # See http://elixir-lang.org/docs/stable/elixir/Application.html
  # for more information on OTP Applications
  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      # Start the endpoint when the application starts
      supervisor(PhoenixBase.Endpoint, []),
      # Start the Ecto repository
      supervisor(PhoenixBase.Repo, []),
      # Here you could define other workers and supervisors as children
      # worker(PhoenixBase.Worker, [arg1, arg2, arg3]),
    ]

    # See http://elixir-lang.org/docs/stable/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: PhoenixBase.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    PhoenixBase.Endpoint.config_change(changed, removed)
    :ok
  end
end
