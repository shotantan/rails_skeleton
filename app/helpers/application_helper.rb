module ApplicationHelper
 def full_name(user_id)
  user = User.find(user_id)
  user.first_name + " " + user.last_name
 end
end