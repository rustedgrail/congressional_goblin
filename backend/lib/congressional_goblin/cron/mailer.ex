defmodule CongressionalGoblin.Mailer do
  use HTTPoison.Base

  @civics_api "https://www.googleapis.com/civicinfo/v2/representatives"
  @api_key Application.get_env :congressional_goblin, CongressionalGoblin.CivicsApiKey

  def process_response_body(body) do
    body
    |> Poison.decode!
  end

  def getReps(address) do
    [key: key] = @api_key
    url = "#{@civics_api}?address=#{URI.encode(address)}&key=#{key}"
    get!(url, [Referer: "congressionalgoblin.com"])
  end
end
