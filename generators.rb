# http://stackoverflow.com/questions/3114515/how-can-i-access-urlwriter-url-path-generators-from-a-models-class-method

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
