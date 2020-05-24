require 'mailjet'
class UserMailer < ApplicationMailer

  def contact
    variable = Mailjet::Send.create(messages: [{
      'From'=> {
        'Email'=> 'remi.boivin@epitech.eu',
        'Name'=> 'Mailjet Pilot'
      },
      'To'=> [
        {
          'Email'=> 'remi50avJ.C@live.fr',
          'Name'=> 'test'
        }
      ],
      'Subject'=> 'Your email flight plan!',
      'TextPart'=> 'Dear , welcome to Mailjet! May the delivery force be with you!',
      'HTMLPart'=> '<h3>Dear, welcome to Mailjet!</h3><br />May the delivery force be with you!'
      }]
    )
    p variable.attributes['Messages']

  end
end
