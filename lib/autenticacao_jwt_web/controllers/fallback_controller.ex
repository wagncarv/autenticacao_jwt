defmodule AutenticacaoJwtWeb.FallbackController do
    use AutenticacaoJwtWeb, :controller

    alias AutenticacaoJwt.Error
    alias AutenticacaoJwtWeb.ErrorView

    def call(conn, {:error, %Error{status: status, result: result}}) do
      conn
      |> put_status(status)
      |> put_view(ErrorView)
      |> render("error.json", result: result)
    end
  end
