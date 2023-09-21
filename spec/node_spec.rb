require 'spec_helper'

RSpec.describe Node, type: :class do
  describe "#initialize()" do
    it "exists and has attributes" do
      node = Node.new("plop")

      expect(node).to be_a Node
      expect(node.data).to eq "plop"
      expect(node.next_node).to eq nil
    end
  end

  context "#class_methods" do
    let(:node1) { Node.new(["bap", "du", "wap", "shwee", "doop"].sample)}
    let(:node2) { Node.new(["bap", "du", "wap", "shwee", "doop"].sample)}
    let(:node3) { Node.new(["bap", "du", "wap", "shwee", "doop"].sample)}

    describe 'add_next()' do
      it "adds the next node in the link" do
        node1.add_next(node2)
        expect(node1.next_node).to eq(node2)
      end
    end
  end
end
