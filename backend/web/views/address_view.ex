defmodule CongressionalGoblin.AddressView do
  use CongressionalGoblin.Web, :view

  def render("index.json", %{reps: reps}) do
    %{data: render_many(reps, CongressionalGoblin.AddressView, "rep.json")}
  end

  def render("rep.json", %{address: rep}) do
    rep
  end
end
