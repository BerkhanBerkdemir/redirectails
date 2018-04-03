require 'rails_helper'

RSpec.describe Url, type: :model do
  it 'is not valid without attributes' do
    expect(Url.new).to_not be_valid
  end

  it 'is valid with valid attributes' do
    url = Url.new url: 'https://example.com', url_id: 'J8kdSd', status: 'public'
    expect(url).to be_valid
  end

  it 'is not valid without url' do
    url = Url.new url: nil
    expect(url).to_not be_valid
  end

  it 'is not valid without url_id' do
    url = Url.new url_id: nil
    expect(url).to_not be_valid
  end

  it 'is not valid without status' do
    url = Url.new status: nil
    expect(url).to_not be_valid
  end
end
