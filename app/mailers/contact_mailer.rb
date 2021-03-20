class ContactMailer < ApplicationMailer
  def contact_mail(contact_post)
    @contact_mail = contact_post
    mail to: @contact_mail.user.email, from: @contact_mail.user.emai,subject:"お問い合わせ内容の確認"
    mail to: 'test@test.com', from: @contact_mail.user.email, subject:"お問い合わせがありました！"
  end
end
