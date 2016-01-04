class ThingsController < ApplicationController
  respond_to :html

  def index
    @things = Thing.all.page(1).per(2)
  end

  def show
    present Thing::Update
    form Comment::Create
  end

  def new
    form Thing::Create
    @form.prepopulate!
    render_form
  end

  def create
    run Thing::Create do |op|
      return redirect_to op.model
    end

    @form.prepopulate!
    render :new
  end

  def edit
    form Thing::Update

    render action: :new
  end

  def update
    run Thing::Update do |op|
      return redirect_to op.model
    end

    render action: :new
  end

  def create_comment
    present Thing::Update
    run Comment::Create do |op| # overrides @model and @form!
      flash[:notice] = "Created comment for \"#{op.thing.name}\""
      return redirect_to thing_path(op.thing)
    end

    render :show
  end

  def next_comments
    present Thing::Update

    render js:
      concept("comment/cell/grid", @thing, page: params[:page]).(:append)
  end

  private

  def render_form
    Slim::Engine.with_options(disable_escape: true, use_html_safe: true) do
      render text: concept("thing/cell/form", @operation), layout: true
      # render :page, layout: true
    end
    
  end
end
