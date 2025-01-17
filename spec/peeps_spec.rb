require "./lib/peep"

describe Peep do
  describe ".all" do
    it "returns all peeps" do
      Peep.create(peep: "This is a test Peep! Peep Peep Peep!")
      Peep.create(peep: "This is a second, even longer, test Peep! Peep Peep Peep!")
      peeps = Peep.all

      expect(peeps).to include("This is a test Peep! Peep Peep Peep!")
      expect(peeps).to include("This is a second, even longer, test Peep! Peep Peep Peep!")
    end
  end

  describe ".create" do
    it "creates a new bookmark" do
      Peep.create(peep: "I can post a peep now!")

      expect(Peep.all).to include "I can post a peep now!"
    end
  end
end
