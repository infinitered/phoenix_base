defmodule PhoenixBase.SampleEmail do
  @moduledoc """
  A sample email module to demonstrate how to use Swoosh.

  ## Example

  In your controller, you can deliver emails like so:

      PhoenixBase.Mailer.deliver PhoenixBase.SampleEmail.sample

  You can view emails in your browser that have been sent at `/dev/mailbox`.
  """

  use Phoenix.Swoosh,
    view: PhoenixBase.EmailView,
    layout: {PhoenixBase.LayoutView, :email}

  def sample do
    %Swoosh.Email{}
    |> from("noreply@example.com")
    |> to("test@example.com")
    |> subject("Test Email")
    |> render_body("sample.html", %{variable: "value"})
  end
end
