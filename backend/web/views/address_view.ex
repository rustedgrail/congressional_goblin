defmodule CongressionalGoblin.AddressView do
  use CongressionalGoblin.Web, :view

  def render("index.json", %{reps: reps}) do
    %{data: render_many(reps, CongressionalGoblin.AddressView, "rep.json")}
  end

  def render("rep.json", %{address: rep}) do
    %{name: rep["name"],
     address: rep["address"],
     party: rep["party"],
     phones: rep["phones"],
     urls: rep["urls"],
     photoUrl: rep["photoUrl"],
     channels: rep["channels"]}
  end
end
