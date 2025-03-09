defmodule DevactionWeb.PageControllerTest do
  use DevactionWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, ~p"/")
    assert html_response(conn, 200) =~ "Paz de espírito de protótipo à produção."
  end
end
