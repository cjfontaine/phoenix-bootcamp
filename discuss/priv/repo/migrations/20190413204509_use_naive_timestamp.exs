defmodule Discuss.Repo.Migrations.UseNaiveTimestamp do
  use Ecto.Migration

  def change do
    alter table(:topics) do
      modify :inserted_at, :naive_datetime, default: fragment("NOW()")
      modify :updated_at, :naive_datetime, default: fragment("NOW()")
    end
  end
end
