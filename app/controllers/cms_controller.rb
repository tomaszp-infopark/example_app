class CmsController < Scrivito::DefaultCmsController
  private

  def homepage
    Obj.homepage
  end
  helper_method :homepage
end
