defmodule ResearchApp.Repo do
  use Ecto.Repo,
    otp_app: :research_app,
    adapter: Ecto.Adapters.Postgres
end
