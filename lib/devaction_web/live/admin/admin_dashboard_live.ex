defmodule DevactionWeb.Admin.AdminDashboardLive do
  use Phoenix.LiveView

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, page_title: "Admin Dashboard")}
  end

  @impl true
  def render(assigns) do
    ~H"""
    <div>
      <h1 class="text-2xl font-bold">Bem-vindo ao Admin!</h1>
      <p>Este é o layout base sem navbar.</p>
    </div>
    """
  end
end
