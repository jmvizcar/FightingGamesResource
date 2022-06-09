class TermsController < ApplicationController
  before_action :redirect_cancel, only: [:create, :update]
  before_action :authorized, only: [:edit, :create_example, :destroy_example]

  def index
    @terms = Term.all.order(:name)
  end
  def show
    @term = Term.find_by(name: params[:name])
  end
  def create
  end
  def edit
    @term = Term.find_by(name: params[:name])
  end
  def update
    term = Term.find_by(name: params[:name])
    term.update(definition: params[:definition])
    if term.save()
      redirect_back(fallback_location: root_path)
    else
      redirect_back(fallback_location: root_path)
    end
  end
  def create_example
    term = Term.find_by(name: params[:name])
    example = Example.create!(image: params[:image],
      description: params[:description], term_id: term.id)
    if example.save()
      redirect_to(term_edit_path(term.name))
    else
      redirect_back(fallback_location: root_path)
    end
  end
  def destroy_example
    removedObj = Example.where(id: params[:example_id])
    removedObj.destroy_all
    redirect_back(fallback_location: root_path)
  end
  private
  def redirect_cancel
    redirect_back(fallback_location: root_path) if params[:cancel]
  end
end
