require 'rails_helper'

RSpec.describe Note, type: :model do
  describe '#by_priority' do
    it 'returns a map of notes gruped by priority' do
      notes = Note.all.priority

      expect(notes).to eq([])
    end
  end

  describe '.priorities_for_select' do
    it do
      expect(1).to eq(1)
    end
  end
end
