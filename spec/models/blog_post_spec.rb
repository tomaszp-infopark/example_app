require 'rails_helper'

describe BlogPost do
  describe '#menu_title' do
    context 'if headline is empty' do
      subject { BlogPost.new }

      it 'displays a placeholder' do
        expect(subject.menu_title).to eq('[New Blog Post]')
      end
    end

    context 'if the headline is given' do
      subject { BlogPost.new(title: 'My Headline') }

      it 'displays the headline' do
        expect(subject.menu_title).to eq('My Headline')
      end
    end
  end
end
