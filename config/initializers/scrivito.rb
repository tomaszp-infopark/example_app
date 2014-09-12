Scrivito.configure do |config|
  config.tenant = ENV['SCRIVITO_TENANT']
  config.api_key = ENV['SCRIVITO_API_KEY']

  config.editing_auth do |env|
    Scrivito::User.define('test_user') do |user|
      Scrivito::User::VERBS.each do |verb|
        user.can_always(verb, :workspace)
      end
    end
  end
end
