module ApplicationHelper
  def page_title
    if (@title)
      @title + ' - Your portfolio site'
    else
      'Your portfolio site'
    end
  end

  def page_heading(text)
    @title = text
    content_tag(:h2, text)
  end
  
  def error_messages_for(object)
  	render(:partial => "shared/error_messages", :locals => {:object => object})
	end
end
