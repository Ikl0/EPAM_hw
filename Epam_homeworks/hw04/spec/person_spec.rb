# frozen_string_literal: true

require_relative '../lib/person'

RSpec.describe Person do
  context '.new' do
    it 'sets the name' do
      person = Person.new(name: 'Ked', surname: '500')
      expect(person.name).to eq 'Ked'
    end

    it 'sets the surname' do
      person = Person.new(name: 'Ked', surname: '500')
      expect(person.surname).not_to eq ''
    end
  end
end
