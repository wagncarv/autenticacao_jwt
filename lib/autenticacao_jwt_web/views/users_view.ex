defmodule AutenticacaoJwtWeb.UsersView do
    use AutenticacaoJwtWeb, :view

    alias AutenticacaoJwt.User

    def render("create.json", %{token: token, user: %User{} = user}) do
      %{
        message: "User created!",
        user: user,
        token: token
      }
    end

    def render("create.json", %{user: %User{} = user}) do
      %{
        message: "User created!",
        user: user
      }
    end

    def render("sign_in.json", %{token: token}), do: %{token: token}
  end
