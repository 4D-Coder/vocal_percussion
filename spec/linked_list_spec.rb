require 'spec_helper'

RSpec.describe LinkedList, type: :class do
  describe "#initialize()" do
    it "exists and has attributes" do
      linked_list = LinkedList.new("plop")

      expect(linked_list).to be_a LinkedList
      expect(linked_list.head).to eq nil
    end
  end

  
end
