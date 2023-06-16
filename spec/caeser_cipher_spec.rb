require './lib/caesar_cipher.rb'

describe "#caeserCipher" do
  it "shifts text by one letter" do
    expect(caeserCipher('ABCD xyz', 1)).to eql('BCDE yza')
  end

  it "excepts numbers and symbold" do
    expect(caeserCipher('1. hi there!123', 1)).to eql('1. ij uifsf!123')
  end

  it "shifts letters by -1 letter" do
    expect(caeserCipher('abcd xyz', -1)).to eql('zabc wxy')
  end

end
