class Message < ApplicationRecord
  after_create :send_contact_email

  private

  def send_contact_email
    MessageMailer.contact(self).deliver_now
  end
end
