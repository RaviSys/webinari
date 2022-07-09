class Refund < ApplicationRecord
  belongs_to :customer
  belongs_to :booking

  def amount_to_be_refunded
    no_of_tickets * ticket_fee
  end

  def remaining_tickets_for_refund
    booking.no_of_tickets - no_of_tickets
  end

  def remaining_amount_for_refund
    remaining_tickets_for_refund * ticket_fee
  end

  def ticket_fee
    booking.workshop.registration_fee
  end
end
