class Image < ApplicationRecord
  has_many :comments
  has_many :likes

  def like_count
    self.likes.count
  end

  IMAGES = [
    { url: "http://blog.flatironschool.com/wp-content/uploads/2017/06/IMAG2936-352x200.jpg", name: "Science Fair" },
    { url: "http://blog.flatironschool.com/wp-content/uploads/2015/10/laptop-352x200.jpg", name: "Turing Tables" },
    { url: "http://blog.flatironschool.com/wp-content/uploads/2016/07/072716-js-saved-web-4-352x200.jpg", name: "The Internet!" },
    { url: "http://blog.flatironschool.com/wp-content/uploads/2016/01/20141110-Flatiron-School-29-352x200.jpg", name: "Not Flatiron" },
    { url: "http://blog.flatironschool.com/wp-content/uploads/2017/06/5-year-event-352x200.jpg", name: "Avi and Adam" },
    { url: "http://blog.flatironschool.com/wp-content/uploads/2016/10/Code-Background-352x200.jpg", name: "Info Hash" },
    { url: "http://blog.flatironschool.com/wp-content/uploads/2017/02/Campus_Normal-352x200.png", name: "Lovelace Graffiti Wall" }
  ]

  before_create do |img|
    unless img.url && img.name
      rand_details = IMAGES.sample
      img.url = rand_details[:url]
      img.name = rand_details[:name]
    end
  end

  after_create do |img|
    if self.class.count > 5000
      ids = self.class.order('created_at DESC').limit(4000).pluck(:id)
      self.class.where(id: ids).delete_all
    end
  end
end
