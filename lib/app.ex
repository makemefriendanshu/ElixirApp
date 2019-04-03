defmodule App do
  use HTTPoison.Base

  @expected_fields ~w(
    weight user_id updated_at start_time start_date project_segment_id project_segment project_id project
    notes name id folder_id estimated_minutes end_time end_date done created_at color_id color checklist_items
  )

  def process_request_url(url) do
    "https://app.teamweek.com/timeline/v1/sharing/oBpjpMFghWHK9PLuNfEbhx2squlxjbN5/tasks"
  end

  def process_response_body(body) do
    body
    |> Poison.decode!()
    |> Enum.map(fn e ->
      e |> Map.take(@expected_fields) |> Enum.map(fn {k, v} -> {String.to_atom(k), v} end)
    end)

    # |> Map.take(@expected_fields)
    # |> Enum.map(fn {k, v} -> {String.to_atom(k), v} end)
  end

  def process_request_body(body), do: body

  def process_request_headers(headers) when is_map(headers) do
    Enum.into(headers, [])
  end

  def process_request_headers(headers), do: headers

  def process_request_options(options), do: options

  def process_response_chunk(chunk), do: chunk

  def process_response_headers(headers), do: headers

  def process_response_status_code(status_code), do: status_code
end
