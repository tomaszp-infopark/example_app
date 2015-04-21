require 'rails_helper'

describe Obj do
  describe '.valid_page_classes_beneath' do
    it 'only allows page' do
      expect(Obj.valid_page_classes_beneath('/'))
        .to match_array(['Page', 'Blog'])
    end
  end

end
