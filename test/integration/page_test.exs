defmodule PhoenixBase.PageTest do
  use PhoenixBase.IntegrationCase, async: true

  test "home page loads" do
    navigate_to page_url(@endpoint, :index)
    header = find_element(:tag, "h2")

    assert inner_text(header) == "Welcome to Phoenix!"
  end
end
