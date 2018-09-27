require 'rails_helper'

describe ImageCreator do
  describe '#find_or_create_image' do
    let (:uuid_1) { SecureRandom.uuid }
    let (:uuid_2) { SecureRandom.uuid }

    it 'creates a new image with data and an associated comment' do
      image = ImageCreator.new(uuid: uuid_1).find_or_create_image
      image_urls = ImageCreator::IMAGES.map { |img| img[:url]}

      expect(image_urls).to include(image.url)
      expect(image.comments.length).to eq(1)
    end

    it 'does not create an image that already exists' do
      ImageCreator.new(uuid: uuid_2).find_or_create_image

      expect {
        ImageCreator.new(uuid: uuid_2).find_or_create_image
      }.to_not change { Image.count }
    end

  end
end
