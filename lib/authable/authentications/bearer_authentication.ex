defmodule Authable.BearerAuthentication do
  @moduledoc """
  Bearer Authentication authenticate
  """

  alias Authable.TokenAuthentication

  def authenticate(%{"access_token" => access_token}) do
    authenticate(access_token)
  end

  def authenticate(access_token) do
    TokenAuthentication.authenticate("access_token", access_token)
  end
end
