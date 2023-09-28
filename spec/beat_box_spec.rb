require 'spec_helper'

RSpec.describe BeatBox, type: :class do
  describe "#initialize()" do
    it "exists and has attributes" do
      bb = BeatBox.new

      expect(bb).to be_a BeatBox
      expect(bb.list).to be_a LinkedList
      expect(bb.list.head).to be nil
    end
  end

  context "#instance methods" do
    let(:bb) { BeatBox.new }

    describe "#append" do
      it "can append multiple sounds at once to it's list" do
        pattern1 = "deep doo ditt"

        bb.append(pattern1)
        expect(bb.list.head.data).to eq "deep"
        expect(bb.list.head.next_node.data).to eq "doo"
      end

      it "can return a count of sounds in it's list" do
        pattern1 = "deep doo ditt"
        pattern2 = "woo hoo shu"

        bb.append(pattern1)
        bb.append(pattern2)
        expect(bb.count).to eq 6
      end
    end

    describe "#play" do
      it "plays the sounds deep doo ditt woo hoo shu" do
        bb.append("deep doo ditt woo hoo shu")
        expect(bb.count).to eq 6
        expect(bb.list.count).to eq 6
        bb.play
      end
    end
  end
end
