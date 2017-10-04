class ApplicationController < ActionController::API

  def reset_to_seed
    #destroys all records
    Like.destroy_all
    Comment.destroy_all
    Image.destroy_all
    #resets IDs to start a 1
    ActiveRecord::Base.connection.execute("TRUNCATE likes")
    ActiveRecord::Base.connection.execute("TRUNCATE comments")
    ActiveRecord::Base.connection.execute("TRUNCATE images")

    image_array = [
      {url: "http://blog.flatironschool.com/wp-content/uploads/2017/06/IMAG2936-352x200.jpg", name: "Science Fair"},
      {url: "http://blog.flatironschool.com/wp-content/uploads/2015/10/laptop-352x200.jpg", name: "Turing Tables"},
      {url: "http://blog.flatironschool.com/wp-content/uploads/2016/07/072716-js-saved-web-4-352x200.jpg", name: "The Internet!"},
      {url: "http://blog.flatironschool.com/wp-content/uploads/2016/01/20141110-Flatiron-School-29-352x200.jpg", name: "Not Flatiron"},
      {url: "http://blog.flatironschool.com/wp-content/uploads/2017/06/5-year-event-352x200.jpg", name: "Avi and Adam"},
      {url: "http://blog.flatironschool.com/wp-content/uploads/2016/10/Code-Background-352x200.jpg", name: "Info Hash"},
      {url: "http://blog.flatironschool.com/wp-content/uploads/2017/02/Campus_Normal-352x200.png", name: "Lovelace Graffiti Wall"}
    ]
    50.times do
      Comment.create(image: Image.create(image_array[rand(image_array.length)]), content: 'first comment!')
    end

    render json: Image.all, include: [:comments, :likes]
  end

end
