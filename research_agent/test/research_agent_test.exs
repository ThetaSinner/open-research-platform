defmodule ResearchAgentTest do
  use ExUnit.Case
  doctest ResearchAgent

  test "greets the world" do
    assert ResearchAgent.hello() == :world
  end
end
