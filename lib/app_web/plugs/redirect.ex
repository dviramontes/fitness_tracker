defmodule AppWeb.Plugs.Redirect do
  def init([to: _] = opts), do: opts
  def init(_default), do: raise("Missing required to: option in redirect")

  def call(conn, opts), do: Phoenix.Controller.redirect(conn, opts)
end
