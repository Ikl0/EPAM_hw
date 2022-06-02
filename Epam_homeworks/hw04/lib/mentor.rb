# frozen_string_literal: true

class Mentor < Person
  def add_homework(title:, description:, student:)
    homework = Homework.new(title: title, description: description, student: student)
    student.homeworks << homework.description
    student.notifications << new_homework(title)
    homework
  end

  def subscribe_to!(student)
    student.notifications.clear if active_notifications_present?
    student.notifications << subscribe_to
  end

  def mark_as_read!
    self.notifications.clear
    self.notifications <<  read_all_notifications
  end

  def reject_to_work!(student, homework)
    student.notifications.shift if student.active_notifications_present?
    student.notifications << homework_reject(homework)
  end

  def accept!(student, homework)
    student.notifications.shift if student.active_notifications_present?
    student.notifications.delete(homework_reject(homework))
    student.notifications << homework_accept(homework)
  end
end
