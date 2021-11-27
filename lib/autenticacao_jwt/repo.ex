defmodule AutenticacaoJwt.Repo do
  use Ecto.Repo,
    otp_app: :autenticacao_jwt,
    adapter: Ecto.Adapters.Postgres
end
