class ImageCreator
  attr_reader :uuid

  IMAGES = [
    {url: "http://blog.flatironschool.com/wp-content/uploads/2017/06/IMAG2936-352x200.jpg", name: "Science Fair"},
    {url: "http://blog.flatironschool.com/wp-content/uploads/2015/10/laptop-352x200.jpg", name: "Turing Tables"},
    {url: "http://blog.flatironschool.com/wp-content/uploads/2016/07/072716-js-saved-web-4-352x200.jpg", name: "The Internet!"},
    {url: "http://blog.flatironschool.com/wp-content/uploads/2016/01/20141110-Flatiron-School-29-352x200.jpg", name: "Not Flatiron"},
    {url: "http://blog.flatironschool.com/wp-content/uploads/2017/06/5-year-event-352x200.jpg", name: "Avi and Adam"},
    {url: "http://blog.flatironschool.com/wp-content/uploads/2016/10/Code-Background-352x200.jpg", name: "Info Hash"},
    {url: "http://blog.flatironschool.com/wp-content/uploads/2017/02/Campus_Normal-352x200.png", name: "Lovelace Graffiti Wall"}
  ]

  def initialize(uuid: uuid)
    @uuid = uuid
  end

  def find_or_create_image
    find_image || create_image
  end

  private

  def find_image
    Image.find_by(uuid: uuid)
  end

  def create_image
    Image.create(random_image.merge(uuid: uuid)).tap do |img|
      img.comments.create(content: 'first comment!')
    end
  end

  def random_image
    IMAGES.sample
  end
end
