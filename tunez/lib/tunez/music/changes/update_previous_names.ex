defmodule Tunez.Music.Changes.UpdatePreviousNames do
  use Ash.Resource.Change

  @impl true
  def change(changeset, _opts, _context) do
    Ash.Changeset.before_action(changeset, fn changeset ->
      new_name = Ash.Changeset.get_attribute(changeset, :name)
      previous_name = Map.get(changeset.data, :name)
      previous_names = Map.get(changeset.data, :previous_names) || []

      names =
        [previous_name | previous_names]
        |> Enum.uniq()
        |> Enum.reject(&(&1 == new_name))

      Ash.Changeset.change_attribute(changeset, :previous_names, names)
    end)
  end
end
