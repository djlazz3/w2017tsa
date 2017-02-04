module ApplicationHelper
    def randomized_background_image
      images = [image_url("backgroundblue.png"),image_url("backgroundred.png"),image_url("backgroundgreen.png"),image_url("backgroundwhite.png"),image_url("backgroundorange.png"),image_url("backgroundorange.png")]
      images[rand(images.size)]
    end
end
