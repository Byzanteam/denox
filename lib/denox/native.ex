# credo:disable-for-this-file Credo.Check.Readability.Specs
defmodule Denox.Native do
  @moduledoc false

  use Rustler, otp_app: :denox, crate: "denox"

  # When your NIF is loaded, it will override this function.
  def add(_a, _b), do: :erlang.nif_error(:nif_not_loaded)
end
