defmodule Repo.Migrations.CreateWebsites do
  use Ecto.Migration

  def up do
    "CREATE TABLE websites( \
      id serial primary key, \
      name varchar(255), \
      address varchar(255), \
      description varchar(255), \
      status varchar(255), \
      created_at timestamp, \
      updated_at timestamp)"
  end

  def down do
    "DROP TABLE websites"
  end
end
