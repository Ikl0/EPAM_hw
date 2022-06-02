# frozen_string_literal: true

require_relative '../lib/notification'
require_relative '../lib/person'

class Student < Person
  def mark_as_read!
    self.notifications.clear
    self.notifications <<  read_all_notifications
  end

  def to_work!(mentor, homework)
    mentor.notifications << status_to_work(homework)
    homeworks << ' <- in progress'
  end

  def add_answer!(homework, answer)
    homework.answers << answer.to_s
  end

  def to_check!(mentor, homework)
    mentor.notifications.clear if mentor.active_notifications_present?
    mentor.notifications << status_to_check(homework)
  end
end
