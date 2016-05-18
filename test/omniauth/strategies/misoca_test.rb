require 'test_helper'

describe OmniAuth::Strategies::Misoca do
  subject do
    OmniAuth::Strategies::Misoca.new({})
  end

  let(:raw_info) do
    {
      'user_id' => 123,
      'email' => 'me@example.com'
    }
  end

  it 'must have correct site' do
    subject.options.client_options.site.must_equal 'https://app.misoca.jp'
  end

  it 'must have correct authorize url' do
    subject.options.client_options.authorize_url.must_equal 'https://app.misoca.jp/oauth2/authorize'
  end

  it 'must have correct token url' do
    subject.options.client_options.token_url.must_equal 'https://app.misoca.jp/oauth2/token'
  end

  it 'must set uid as String' do
    subject.stub(:raw_info, raw_info) do
      subject.uid.must_equal '123'
    end
  end

  it 'must set info' do
    subject.stub(:raw_info, raw_info) do
      subject.info['email'].must_equal 'me@example.com'
    end
  end
end
