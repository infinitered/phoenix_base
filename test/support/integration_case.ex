defmodule PhoenixBase.IntegrationCase do
  @moduledoc """
  A case template for integration tests using Hound.
  """

  use ExUnit.CaseTemplate

  using do
    quote do
      use Hound.Helpers

      import Ecto
      import Ecto.Query, only: [from: 2]
      import PhoenixBase.Router.Helpers

      alias PhoenixBase.Repo

      # The default endpoint for testing
      @endpoint PhoenixBase.Endpoint

      @moduletag :integration

      hound_session
    end
  end

  setup_all do
    :ok = PhoenixBase.PhantomJS.start
    :ok
  end

  setup do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(PhoenixBase.Repo)
    Ecto.Adapters.SQL.Sandbox.mode(PhoenixBase.Repo, {:shared, self})
    :ok
  end
end
