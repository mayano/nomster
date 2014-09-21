class NotificationMailer < ActionMailer::Base
  default from: "no-reply@nomsterapp.com"


	def comment_added(comment)
		@place = comment.place
		@place.owner = @place.user

		mail(to: @place.owner.email,
			subject: "A comment has been added to #{@place.name}")
	end
end

