require 'rails_helper'

describe BlogPost do
  describe '#overview_headline' do
    context 'if headline is empty' do
      subject { BlogPost.new }

      it 'displays a placeholder' do
        expect(subject.overview_headline).to eq('[New Blog Post]')
      end
    end

    context 'if the headline is given' do
      subject { BlogPost.new(headline: 'My Headline') }

      it 'displays the headline' do
        expect(subject.overview_headline).to eq('My Headline')
      end
    end
  end
end
