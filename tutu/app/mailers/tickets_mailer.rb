class TicketsMailer < ApplicationMailer
  def buy_ticket(user, ticket)
    @user = user
    @ticket = ticket
    mail(to: user.email, subject: 'Уведомление о покупке билета')
  end

  def cancel_ticket(user, ticket)
    @serial_number = ticket.serial_number
    @user = ticket.user
    mail(to: @user.email, subject: 'Уведомление об удалении билета')
  end

end
