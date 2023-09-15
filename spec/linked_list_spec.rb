require 'spec_helper'

RSpec.describe LinkedList, type: :class do
  describe "#initialize()" do
    it "exists and has attributes" do
      list = LinkedList.new

      expect(list).to be_a LinkedList
      expect(list.head).to eq nil
    end
  end

  context "#instance methods" do
    let(:list) { LinkedList.new }

    describe "#append()" do

      it "appends a node object to head" do
        sound = "doop"

        list.append(sound)

        expect(list.head).to be_a Node
        expect(list.head.data).to eq sound
      end
    end
  end
end
