class CmsController < ApplicationController
  include Scrivito::ControllerActions

  private

  def homepage
    Obj.root
  end
  helper_method :homepage
end
