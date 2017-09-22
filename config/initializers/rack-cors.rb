if defined? Rack::Cors
  Rails.configuration.middleware.insert_before 0, Rack::Cors do
    allow do
      origins %w[
        https://theconf.club
        http://theconf.club
        https://www.theconf.club
        http://www.theconf.club
        https://theconf.herokuapp.com
        http://theconf.herokuapp.com
      ]
      resource '/assets/*'
    end
  end
end
