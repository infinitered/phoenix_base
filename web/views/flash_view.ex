defmodule PhoenixBase.FlashView do
  @moduledoc """
  Contains functions for dealing with flash messages.
  """

  use Phoenix.HTML

  import Phoenix.Controller, only: [get_flash: 1, get_flash: 2]

  def flash?(conn) do
    conn
    |> get_flash
    |> Enum.empty?
  end

  @doc """
  Returns a formatted flash message of the given type.
  ## Parameters
  - `conn`: The current `Plug.Conn`.
  - `type`: The flash type, such as `:error`.
  """
  def flash_message(conn, type) do
    if message = get_flash(conn, type) do
      content_tag :p, class: "flash #{type}" do
        message
      end
    end
  end
end
