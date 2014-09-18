class NotificationMailer < ActionMailer::Base
  default from: "no-reply@nomsterapp.com"


	def comment_added
		mail(to: "mayanovarini@gmail.com",
			subject: "A comment has been added to your post")
	end
end

