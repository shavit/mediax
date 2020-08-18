defmodule Mediax.Plug do
  @moduledoc """
  `Mediax.Plug`
  """
  use Plug.Router

  plug :match
  plug :dispatch

  get "/" do
    send_resp(conn, 200, "it works")
  end
end
