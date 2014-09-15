class Blog < Obj
  def latest_posts(page=0, count=10)
   BlogPost.all
     .and(:_path, :starts_with, path + '/')
     .offset(page * count)
     .batch_size(count)
     .order(:published_at)
     .reverse_order
     .take(count)
  end
end
