defmodule ResearchAgent.Worker do
  use GenServer

  def start_link(state) do
    GenServer.start_link(__MODULE__, state, name: __MODULE__)
  end

  @impl true
  def init(state) do
    {:ok, state}
  end

  @impl true
  def handle_cast({:scan, target}, state) do
    IO.puts(target)
    IO.puts(state)
    {:noreply, target}
  end
end