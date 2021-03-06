defmodule AutenticacaoJwtWeb.UsersController do
    use AutenticacaoJwtWeb, :controller
    alias AutenticacaoJwt.User
    alias AutenticacaoJwtWeb.{Auth.Guardian, FallbackController}
    alias AutenticacaoJwtWeb.{Auth.Guardian}

    action_fallback FallbackController

    def create(conn, params) do
      with {:ok, %User{} = user} <- AutenticacaoJwt.create_user(params),
            {:ok, token, _claims} <- Guardian.encode_and_sign(user) do
        conn
        |> put_status(:created)
        |> render("create.json", token: token, user: user)
      end
    end

    def sign_in(conn, params) do
      with {:ok, token} <- Guardian.authenticate(params) do
        conn
        |> put_status(:ok)
        |> render("sign_in.json", token: token)
      end
    end
  end
