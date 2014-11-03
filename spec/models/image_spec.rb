require 'rails_helper'

describe Image do
  describe '#image?' do
    subject { Image.new }

    it 'is an image' do
      expect(subject.image?).to be_truthy
    end
  end

  describe '#menu_title & #description_for_editor' do
    context 'if title is not set' do
      subject { Image.new(_path: '/my/path/filename.jpg') }

      it 'shows a default with file name' do
        expect(subject.menu_title).to eq('filename.jpg')
        expect(subject.description_for_editor).to eq('filename.jpg')
      end
    end

    context 'if title is set' do
      subject { Image.new(_path: '/my/path/filename.jpg', title: 'my_title') }

      it 'shows a default with file name' do
        expect(subject.menu_title).to eq('my_title')
        expect(subject.description_for_editor).to eq('my_title')
      end
    end
  end
end
