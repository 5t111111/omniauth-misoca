# Omniauth::Misoca

This is the OmniAuth strategy for authenticating to Misoca. To use it, you'll need to sign up for an OAuth2 Application ID and Secret on the Misoca API Page.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'omniauth-misoca'
```

## Basic Usage

```ruby
use OmniAuth::Builder do
  provider :misoca, ENV['MISOCA_KEY'], ENV['MISOCA_SECRET'], scope: 'write'
end
```

See http://doc.misoca.jp for details.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
