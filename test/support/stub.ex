defmodule Authable.Stub do
  defmodule AppAuthorization do
    def grant(%{"user" => _, "client_id" => _, "redirect_uri" => _, "scope" => _} = params),
      do: send(self(), :ok)

    def revoke(%{"user" => _, "id" => _} = params),
      do: send(self(), :ok)
  end
end
