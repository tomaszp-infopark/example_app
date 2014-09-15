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

  # Register a JavaScript search API result format used by the resource browser.
  config.register_obj_format('resourcebrowser') do |obj|
    format = {
      id: obj.id,
      title: obj.title || obj.name,
    }

    if obj.image?
      format[:preview] = obj.body_data_url
    end

    format
  end
end
