class ThanksMailer < ApplicationMailer
	# default :from => "ut10312510@gmail.com"

	# def send_signup_email
	# 	@greeting = "Hi"
	# 	mail( :to => "ut10312510@gmail.com", :subject => "会員登録完了しました。")
	# end

	default :from => ENV['USER_NAME']

	def send_signup_email(user)
		@user = user
		mail( :to => user.email, :subject => "会員登録完了しました。")
	end
end
