defmodule Devaction.Repo do
  use Ecto.Repo,
    otp_app: :devaction,
    adapter: Ecto.Adapters.Postgres
end
