defmodule Test do
  alias AutenticacaoJwt.Users.Create

  def test() do
    user = %{"password" => "123456"}
    Create.call(user)
  end
end
