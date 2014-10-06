class CmsController < ApplicationController
  include Scrivito::ControllerActions

  private

  def homepage
    Obj.homepage
  end
  helper_method :homepage
end
