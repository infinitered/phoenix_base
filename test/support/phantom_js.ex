defmodule PhoenixBase.PhantomJS do
  @moduledoc """
  Provides helpers to automatically start PhantomJS at the beginning of a test
  and then close it when the tests have completed.
  """

  @executable "./node_modules/phantomjs-prebuilt/lib/phantom/bin/phantomjs"

  def start do
    port = Port.open({:spawn, "#{@executable} --wd"}, [])
    {:os_pid, os_pid} = Port.info(port, :os_pid)

    System.at_exit fn(_exit_status) ->
      System.cmd("kill", [to_string(os_pid)])
    end

    wait_for_phantomjs_start
  end

  defp wait_for_phantomjs_start do
    started =
      receive do
        {_port, {:data, data}} ->
          to_string(data) =~ ~r/8910/
      end

    if started do
      :ok
    else
      wait_for_phantomjs_start
    end
  end
end
