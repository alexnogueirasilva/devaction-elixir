defmodule Devaction.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      DevactionWeb.Telemetry,
      Devaction.Repo,
      {DNSCluster, query: Application.get_env(:devaction, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: Devaction.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: Devaction.Finch},
      # Start a worker by calling: Devaction.Worker.start_link(arg)
      # {Devaction.Worker, arg},
      # Start to serve requests, typically the last entry
      DevactionWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Devaction.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    DevactionWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
