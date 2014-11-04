require 'rails_helper'

describe Obj do
  describe '.valid_page_classes_beneath' do
    it 'only allows page' do
      expect(Obj.valid_page_classes_beneath('/'))
        .to match_array(['Page', 'Blog'])
    end
  end

  describe '#menu_title' do
    context 'if the title is empty' do
      subject { Obj.new }

      it 'indicates that the title is empty' do
        expect(subject.menu_title).to eq('[Empty Title]')
      end
    end

    context 'if Obj has a title' do
      subject { Obj.new(title: 'my_title') }

      it "displays the Obj's title" do
        expect(subject.menu_title).to eq('my_title')
      end
    end
  end
end
