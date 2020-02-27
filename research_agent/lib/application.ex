defmodule ResearchAgent.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    IO.puts("Starting application.")

    children = [
      # Starts a worker by calling: ResearchAgent.Worker.start_link(arg)
      {ResearchAgent.Worker, "initial state"}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ResearchAgent.Supervisor]
    result = Supervisor.start_link(children, opts)

    GenServer.cast(ResearchAgent.Worker, {:scan, "my target"})

    result
  end
end
