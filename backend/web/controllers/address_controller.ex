defmodule CongressionalGoblin.AddressController do
  use CongressionalGoblin.Web, :controller

  def get_representatives(conn, %{"address" => address}) do
    IO.inspect(address)

    send_resp(conn, :accepted, "WORKED")
  end
end
