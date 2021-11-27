defmodule AutenticacaoJwt do
  alias AutenticacaoJwt.Users.Create, as: UserCreate
  alias AutenticacaoJwt.Users.Get, as: UserGet

  defdelegate create_user(param), to: UserCreate, as: :call
  defdelegate get_user_by_id(id), to: UserGet, as: :by_id
end
