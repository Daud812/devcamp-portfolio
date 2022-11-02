module DefaultPageContent
extend ActiveSupport::Concern
included do
  before_action :set_page_defaults  
end

def set_page_defaults
@page_titel ="Devcamp Portfolio"
@seo_keywords = "Dawood Ibraheem Portfolio"
end


end