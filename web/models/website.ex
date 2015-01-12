defmodule Monitor.Website do
  use Ecto.Model

  schema "websites" do
    field :name, :string
    field :address, :string
    field :description, :string
    field :status, :string
    field :created_at, :datetime, default: Ecto.DateTime.local
    field :updated_at, :datetime, default: Ecto.DateTime.local
  end
end