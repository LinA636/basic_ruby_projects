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

describe "#adjustDownLetter" do #97, 122
  it "shifts 97 to 122" do
    expect(adjustDownLetter(97,-1)).to eql(122)
  end

  it "shifts 97 to 121" do
    expect(adjustDownLetter(97,-2)).to eql(121)
  end

  it "shifts 97 to 99" do
    expect(adjustDownLetter(97,2)).to eql(99)
  end

  it "shifts 122 to 97" do
    expect(adjustDownLetter(122,1)).to eql(97)
  end
end

describe "#adjustUpLetter" do #65, 90
  it "shifts 65 to 90" do
    expect(adjustUpLetter(65,-1)).to eql(90)
  end

  it "shifts 65 to 89" do
    expect(adjustUpLetter(65,-2)).to eql(89)
  end

  it "shifts 65 to 67" do
    expect(adjustUpLetter(65,2)).to eql(67)
  end

  it "shifts 90 to 65" do
    expect(adjustUpLetter(90,1)).to eql(65)
  end
end
