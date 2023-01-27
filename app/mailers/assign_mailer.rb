class AssignMailer < ApplicationMailer
  default from: 'from@example.com'

  def assign_mail(email, password)
    @email = email
    @password = password
    mail to: @email, subject: I18n.t('views.messages.complete_registration')
  end

  def assign_owner_email(email)
    @email = email
    mail to: @email, subject: I18n.t('views.messages.authority_transfer_complete')
  end
end