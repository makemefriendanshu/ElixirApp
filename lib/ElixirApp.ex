defmodule ElixirApp do
  # use App
  def get do
    body =
      App.get!("").body
      |> Enum.filter(fn x ->
        Date.from_iso8601!(x[:start_date]) >= Date.from_iso8601!("2019-02-18")
      end)
      |> Enum.filter(fn x ->
        Date.from_iso8601!(x[:end_date]) <= Date.from_iso8601!("2019-02-22")
      end)
      |> Enum.filter(fn x -> x[:name] == String.upcase(x[:name]) end)
      |> Enum.map(fn x -> x[:name] end)
      |> Enum.join(" ")
  end
end
