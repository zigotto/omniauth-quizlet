# Omniauth Quizlet Strategy

This gem provides a simple way to authenticate to Quizlet using Omniauth.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'omniauth-quizlet'
```

## Basic usage

First, you will need to [register](https://quizlet.com/api/2.0/docs/) with Quizlet and obtain an Client ID and Secret Key. Once you do that, you can use it like so:

```ruby
use OmniAuth::Builder do
  provider :quizlet, 'client_id', 'secret_key', :scope => "read write_set write_group", :state => "RANDOM_STRING"
end
```

## Scopes

Scopes represent a limited set of permissions you can request from a user. More info on [scopes](https://quizlet.com/api/2.0/docs/scopes/)

## Additional information

For additional information, refer to the [OmniAuth wiki](https://github.com/intridea/omniauth/wiki) and [Quizlet API 2.0](https://quizlet.com/api/2.0/docs/).

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Licence
MIT License. Copyright 2012 Zigotto®. http://www.zigotto.com
