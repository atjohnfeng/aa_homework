class UserMailer < ApplicationMailer

    default from: 'from@example.com'

    def welcome_email(user)
        @user = user
        @url = 'http://localhost:3000/session/new'
        mail(to: @user.username, subject: 'Thank you for signing up at 99Cats!')
    end

end