module ApplicationHelper
<<<<<<< HEAD
  #Returns full title on a per-page basis
  def full_title(page_title = '')
    base_title = "Ruby on Rails Tutorial Sample App"
=======
  
  def full_title(page_title= '')
    base_title= "Ruby on Rails Tutorial Sample App"
>>>>>>> static-pages
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
<<<<<<< HEAD
=======
  
>>>>>>> static-pages
end
