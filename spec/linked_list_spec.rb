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

        list.append("boppidy")
        expect(list.count).to eq 3
      end
    end

    describe "#to_string" do
      it "generates a string of all the elements in the list, separated by spaces" do
        list.append("beep")
        list.append("boop")
        list.append("bop")

        expect(list.to_string).to eq("beep boop bop")
      end

      it "returns message when list has no data" do
        expect(list.to_string).to eq "List empty!"
      end
    end

    describe "#prepend" do
      it "adds a node to the end of the list" do
        list.prepend("doo")
        list.append("wap")
        list.prepend("shaba")

        expect(list.to_string).to eq("shaba doo wap")
      end
    end

    describe "#insert" do
      it "selects an index, and inserts sound" do
        # Tarzan: Smashin' the Camp
        list.prepend("do")
        list.append("doo")
        list.insert(1, "bop")
        expect(list.to_string).to eq("do bop doo")

        list.insert(2, "she")
        expect(list.to_string).to eq("do bop she doo")
      end

      it "appends indices outside of current range" do
        list.insert(0, "zwee")
        list.insert(1, "dop")
        list.insert(2, "she")
        list.insert(3, "doo")

        expect(list.to_string).to eq("zwee dop she doo")
      end

      it "prepends when index supplied is 0" do
        list.append("dop")
        list.insert(0, "zwee")

        expect(list.to_string).to eq("zwee dop")
      end
    end

    describe "#find" do
      it "finds a node by index" do
        list.insert(0, "zwee")
        list.insert(1, "dop")
        list.insert(2, "she")
        list.insert(3, "doo")

        expect(list.find(0, 1)).to eq("zwee")
        expect(list.find(1, 2)).to eq("dop she")
        expect(list.find(0, 3)).to eq("zwee dop she")
        expect(list.find(3, 1)).to eq("doo")
      end
    end
  end
end
