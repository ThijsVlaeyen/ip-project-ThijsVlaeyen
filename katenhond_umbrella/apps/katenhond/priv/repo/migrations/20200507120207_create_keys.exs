defmodule Katenhond.Repo.Migrations.CreateKeys do
  use Ecto.Migration

  def change do
    create table(:keys) do
      add :name, :string, null: false
      add :value, :string
      add :permission, :boolean
      add :user_id, references(:users, on_delete: :delete_all), null: false
    end

    create index(:keys, [:user_id])
  end
end
