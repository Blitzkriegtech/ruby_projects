require "rspec"

require_relative "../caesar_cipher"

RSpec.describe "#caesar_cipher" do
  context "with lowercase letters" do
    it "shifts letters by the given amount" do
      expect(caesar_cipher("abc", 1)).to eq("bcd")
    end

    it "wraps around the alphabet" do
      expect(caesar_cipher("xyz", 3)).to eq("abc")
    end

    it "handles large shift values" do
      expect(caesar_cipher("a", 30)).to eq("e") # 30 % 26 = 4
    end
  end

  context "with uppercase letters" do
    it "shifts letters by the given amount" do
      expect(caesar_cipher("ABC", 1)).to eq("BCD")
    end

    it "wraps around the alphabet" do
      expect(caesar_cipher("XYZ", 3)).to eq("ABC")
    end
  end

  context "with numbers" do
    it "leaves numbers unchanged" do
      expect(caesar_cipher("a1b2", 5)).to eq("f1g2")
    end
  end

  context "with special characters" do
    it "leaves punctuation and spaces unchanged" do
      expect(caesar_cipher("Hello! A,", 3)).to eq("Khoor! D,")
    end
  end

  context "with default shift value" do
    it "shifts by 1 when no shift is provided" do
      expect(caesar_cipher("abc")).to eq("bcd")
    end
  end

  context "with negative shifts" do
    it "shifts letters backward" do
      expect(caesar_cipher("bcd", -1)).to eq("abc")
    end

    it "wraps around the alphabet" do
      expect(caesar_cipher("abc", -3)).to eq("xyz")
    end
  end

  context "edge cases" do
    it "returns an empty string for empty input" do
      expect(caesar_cipher("")).to eq("")
    end

    it "handles mixed case input" do
      expect(caesar_cipher("AbC", 2)).to eq("CdE")
    end

    it "handles shift of 0" do
      expect(caesar_cipher("abc", 0)).to eq("abc")
    end
  end
end
