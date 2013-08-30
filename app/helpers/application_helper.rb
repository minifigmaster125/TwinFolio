module ApplicationHelper

  def joraaver?
    if request.original_url =~ /Joraaver/
      return true
    else 
      return false
    end
  end
  def avatar_url(comment)
    gravatar_id = Digest::MD5::hexdigest(comment.email).downcase
    "http://gravatar.com/avatar/#{gravatar_id}.png"
  end
end
