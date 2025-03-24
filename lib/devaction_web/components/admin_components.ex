defmodule DevactionWeb.AdminComponents do
  use Phoenix.Component

  def mount(_params, _session, socket) do
      {:ok, assign(socket, collapsed: false)}
    end
  
    def handle_event("toggle-collapse", _params, socket) do
      {:noreply, update(socket, :collapsed, fn val -> not val end)}
    end
  
    def render(assigns) do
      ~H"""
      <button
        phx-click="toggle-collapse"
        class="absolute top-4 right-4 bg-gray-800 text-white px-2 py-1 rounded-md"
      >
        {if @collapsed, do: "Expand", else: "Collapse"}
      </button>
  
      <div class={[
        "h-screen bg-gray-900 text-white flex flex-col transition-all duration-300",
        (@collapsed && "w-16") || "w-64"
      ]}>
        <div class="p-4 border-b border-gray-700 flex items-center justify-between">
          <%= if @collapsed do %>
            <span class="material-icons">menu</span>
          <% else %>
            <div class="text-xl font-bold">Acme Inc.</div>
          <% end %>
        </div>
  
        <nav class="flex-1 p-4">
          <ul class="space-y-2">
            <li>
              <a
                href="#"
                class="flex items-center gap-2 text-gray-300 hover:bg-gray-800 rounded-md px-2 py-1"
              >
                <span class="material-icons">dashboard</span>
                {unless @collapsed, do: "Dashboard"}
              </a>
            </li>
            <li>
              <a
                href="#"
                class="flex items-center gap-2 text-gray-300 hover:bg-gray-800 rounded-md px-2 py-1"
              >
                <span class="material-icons">people</span>
                {unless @collapsed, do: "Users"}
              </a>
            </li>
            <li>
              <a
                href="#"
                class="flex items-center gap-2 text-gray-300 hover:bg-gray-800 rounded-md px-2 py-1"
              >
                <span class="material-icons">settings</span>
                {unless @collapsed, do: "Settings"}
              </a>
            </li>
          </ul>
        </nav>
  
        <div class="p-4 border-t border-gray-700">
          <div class="text-gray-400 text-sm mb-1">Logged in as</div>
          <div class="font-semibold">
            No user
          </div>
        </div>
      </div>
      """
    end
end
