defmodule Repo do
  use Ecto.Repo, adapter: Ecto.Adapters.Postgres

  def conf do
    parse_url "ecto://monitor:monitor@localhost/monitor"
  end

  def priv do
    app_dir(:monitor, "priv/repo")
  end
end