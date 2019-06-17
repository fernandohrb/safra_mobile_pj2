require 'rubygems'
require 'action_mailer'
require 'action_view'
require './mailer_config.rb'

class NotificationMailer < ActionMailer::Base
    default from: 'Nome do Remetente <email_remetente@email.com>'
    def alert(to,subject)
        mail(to: to, subject: subject) do |format|
            format.html { render 'C:/Projetos/safra_mobile_pj2/email/features/support/alert.html.erb' }
        end
    end
end