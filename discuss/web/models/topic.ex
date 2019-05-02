defmodule Discuss.Topic do
  use Discuss.Web, :model

  schema "topics" do
    field :title, :string
    belongs_to :user, Discuss.User
    has_many :comments, Discuss.Comment
  end

  def changeset(struct, params \\ %{}) do # \\ is how default values are set
    struct
    |> cast(params, [:title]) # Creates changeset
    |> validate_required([:title]) # Adds errors to changeset
    
  end
end