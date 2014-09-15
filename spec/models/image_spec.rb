require 'rails_helper'

describe Image do
  describe '#image?' do
    subject { Image.new }

    it 'is an image' do
      expect(subject.image?).to be_truthy
    end
  end
end
