class ModelURL
  include ActionController::UrlWriter
  @@singleton = ModelURL.new
  class << self
    def singleton
      @@singleton
    end
  end
end

ModelURL::generator.send :user_widgets_url, :host => DOMAIN
