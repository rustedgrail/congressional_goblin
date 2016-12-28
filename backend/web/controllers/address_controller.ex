defmodule CongressionalGoblin.AddressController do
  use CongressionalGoblin.Web, :controller

  def get_representatives(conn, %{"address" => address}) do
    %{body: %{"officials" => reps}} = CongressionalGoblin.Mailer.getReps(address)
    render(conn, "index.json", reps: reps)
  end
end
