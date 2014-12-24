defmodule RSA.Mixfile do
  use Mix.Project

  def project do
    [app: :rsa,
     version: "0.0.1",
     elixir: "~> 1.0",
     package: package,
     description: "Erlang public_key cryptography wrapper"]
  end

  defp package do
    [contributors: ["trapped"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/trapped/elixir-rsa"}]
  end
end
