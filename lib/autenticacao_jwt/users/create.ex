defmodule AutenticacaoJwt.Users.Create do
  alias AutenticacaoJwt.{Error, Repo, User}

  def call(param) do
    param
    |> User.changeset()
    |> Repo.insert()
    |> handle_insert()
  end

  defp handle_insert({:ok, %User{}} = result), do: result

  defp handle_insert({:error, result}) do
    {:error, Error.build(:bad_request, result)}
  end
end
