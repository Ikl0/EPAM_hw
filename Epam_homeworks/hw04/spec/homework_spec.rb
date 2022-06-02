# frozen_string_literal: true

# require 'rspec'
require_relative '../lib/student'
require_relative '../lib/homework'

RSpec.describe Homework do
  let(:student) { Student.new(name: 'Ked', surname: '500') }
  let(:homework) do
    Homework.new(title: 'task1',
                 description: 'Solve (2+3*2) using eval method.',
                 student: student)
  end

  context '.new' do
    it 'sets the title' do
      expect(homework.title).to eq 'task1'
    end

    it 'sets the description' do
      expect(homework.description).to eq 'Solve (2+3*2) using eval method.'
    end

    it 'sets the student' do
      expect(homework.student).to eq student
    end

    it 'check array is empty' do
      expect(homework.answers).to be_empty
    end
  end
end
