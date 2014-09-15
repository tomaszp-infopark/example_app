require 'rails_helper'

describe Blog do
  subject { Blog.new(_path: '/test_blog') }
  describe '#latest_posts' do
    let(:obj_enumerator) { double }

    let(:blog_posts) { [BlogPost.new(_path: '/test_blog/post1')] }

    def expect_enumertor_to_receive( method, *args)
      receive_matcher = receive(method)
      receive_matcher.with(*args) if args.present?
      receive_matcher.and_return(obj_enumerator)
      expect(obj_enumerator).to receive_matcher
    end

    def expect_blog_post_search(offset, count)
      expect(BlogPost).to receive(:all) { obj_enumerator }
      expect_enumertor_to_receive(:and, :_path, :starts_with, '/test_blog/')
      expect_enumertor_to_receive(:offset, offset * count)
      expect_enumertor_to_receive(:batch_size, count)
      expect_enumertor_to_receive(:order, :published_at)
      expect_enumertor_to_receive(:reverse_order)
      expect(obj_enumerator).to receive(:take).with(count) { blog_posts }
    end

    it 'searches for all blog_post under the current blog' do
      expect_blog_post_search(0, 10)

      expect(subject.latest_posts).to eq(blog_posts)
    end

    context 'with offset and count' do
      it 'searches with count and offset' do
        expect_blog_post_search(1, 5)

        expect(subject.latest_posts(1, 5)).to eq(blog_posts)
      end
    end

  end
end
