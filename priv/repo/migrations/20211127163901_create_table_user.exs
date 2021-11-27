defmodule AutenticacaoJwt.Repo.Migrations.CreateTableUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :password_hash, :string
      timestamps()
    end
  end
end
