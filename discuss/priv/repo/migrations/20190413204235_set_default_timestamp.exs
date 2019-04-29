defmodule Discuss.Repo.Migrations.SetDefaultTimestamp do
  use Ecto.Migration

  def change do
    alter table(:topics) do
      modify :inserted_at, :datetime, default: fragment("NOW()")
      modify :updated_at, :datetime, default: fragment("NOW()")
    end
  end
end
