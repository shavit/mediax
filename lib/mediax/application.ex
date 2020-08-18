defmodule Mediax.Application do
  @moduledoc """
  `Mediax.Application`
  """
  use Application
  alias Mediax.Plug, as: MediaxPlug
  alias Plug.Cowboy, as: PlugCowboy

  def start(_type, args) do
    children = [
      {PlugCowboy, plug: MediaxPlug, scheme: Keyword.get(args, :scheme, :http), port: Keyword.get(args, :http_port, 4000)}
    ]

    opts = [
      strategy: :one_for_one,
      name: Keyword.get(args, :name, :mediax)
    ]

    Supervisor.start_link(children, opts)
  end
end
