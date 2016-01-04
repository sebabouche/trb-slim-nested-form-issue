module Thing::SignedIn
  include Trailblazer::Operation::Module

  contract do
    property :is_author, virtual: true, default: "0"
  end

  callback(:before_save) do
    on_change :add_current_user_as_author!, property: :is_author
  end

  def add_current_user_as_author!(thing)
    thing.users << @current_user
  end

  def setup_params!(params)
    @current_user = params[:current_user]
  end
end
