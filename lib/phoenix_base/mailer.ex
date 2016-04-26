defmodule PhoenixBase.Mailer do
  @moduledoc """
  Handles delivering emails through a configured email adapter.

  ## Example

      PhoenixBase.SampleEmail.sample
      |> Mailer.deliver
  """

  use Swoosh.Mailer, otp_app: :phoenix_base
end
