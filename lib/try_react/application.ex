defmodule TryReact.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      TryReactWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: TryReact.PubSub},
      # Start the Endpoint (http/https)
      TryReactWeb.Endpoint
      # Start a worker by calling: TryReact.Worker.start_link(arg)
      # {TryReact.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: TryReact.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    TryReactWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
