# OmniAuth Skerou

This is the official OmniAuth strategy for authenticating to Skerou. To
use it, you'll need to sign up for an OAuth2 Application ID and Secret
on Skerou.

## Installation

Add the `omniauth-skerou` gem to your Gemfile.
As the gem is not released public yet, you have to specify the local directory of it.

`gem 'omniauth-skerou', path: 'path_to_the_gem_directory'`

## Basic Usage

```ruby
use OmniAuth::Builder do
  provider :skerou, ENV['SKEROU_KEY'], ENV['SKEROU_CALLBACK_URI'], ENV['SKEROU_SECRET']
end
```

## Get a token

As for every Omniauth strategy you can initialize the process by accessing `http://you-website/auth/skerou'.

When you hit `http://you-website/auth/skerou' the gem will :

- SEND 	  a GET to Skerou login page
- RECEIVE a GET from Skerou to your `SKEROU_CALLBACK_URL` with an authorization code

You will have to post back the authorization code to get your token.

Example :

```ruby
var = HTTParty.post("http://staging.skerou.com/oauth2/token.json",
                        body: {
                        code: params[:code],
                        client_id: SKEROU_KEY,
                        response_type: 'token'})
# var will contain the token
```

