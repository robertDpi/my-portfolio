module ApplicationHelper
  def title(page_title)
    content_for(:title, page_title)
  end
  
  def error_messages_for(object)
  	render(:partial => "shared/error_messages", :locals => {:object => object})
	end
end
