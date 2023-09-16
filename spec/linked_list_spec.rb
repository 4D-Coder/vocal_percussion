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

      it "can add multiple nodes to a list" do
        head_node = list.append("beep")
        expect(list.head).to eq head_node

        second_node = list.append("boop")
        expect(list.head.next_node).to eq second_node

        third_node = list.append("bop")
        expect(list.head.next_node.next_node).to eq third_node
      end
    end

    describe "#count" do
      it "sees how many elements exist within the list" do
        list.append("doop")
        expect(list.count).to eq 1
        list.append("beep")
        expect(list.count).to eq 2
      end
    end

    describe "#to_string" do
      it "generates a string of all the elements in the list, separated by spaces" do
        list.append("beep")
        list.append("boop")
        list.append("bop")

        expect(list.to_string).to eq("beep boop bop")
      end
    end
  end
end
