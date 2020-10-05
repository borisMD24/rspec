require_relative '../lib/06_pig_latin'

describe "#translate" do

  it "translates a word beginning with a vowel" do
    s = translate("apple")
    expect(s).to eq("appleay")
  end

  it "translates a word beginning with a consonant" do
    s = translate("banana")
    expect(s).to eq("ananabay")
  end

  it "translates a word beginning with two consonants" do
    s = translate("cherry")
    expect(s).to eq("errychay")
  end

  it "translates two words" do
    s = translate("eat pie")
    expect(s).to eq("eatay iepay")
  end

  it "translates a word beginning with three consonants" do
    expect(translate("three")).to eq("eethray")
  end

  it "counts 'sch' as a single phoneme" do
    s = translate("school")
    expect(s).to eq("oolschay")
  end

  it "counts 'qu' as a single phoneme" do
    s = translate("quiet")
    expect(s).to eq("ietquay")
  end

  it "counts 'qu' as a consonant even when it's preceded by a consonant" do
    s = translate("square")
    expect(s).to eq("aresquay")
  end

  it "translates many words" do
    s = translate("the quick brown fox")
    expect(s).to eq("ethay ickquay ownbray oxfay")
  end

  it "translates a word where first letter is capitalized" do
    s = translate("Cette")
    expect(s).to eq("Ettecay")
  end
  it "translates a word where first letters are qu capitalized" do
    s = translate("Quack")
    expect(s).to eq("Ackquay")
  end
  it "translates a sentence where the first letter is capitalized" do
    s = translate("Cette correction va etre longue")
    expect(s).to eq("Ettecay orrectioncay avay etreay onguelay")
  end
    
  it "translates a sentence where the first letter are qu capitalized" do
    s = translate("Quack Quack je suis un canard")
    expect(s).to eq("Ackquay Ackquay ejay uissay unay anardcay")
  end

  # Test-driving bonus:
  # * write a test asserting that capitalized words are still capitalized (but with a different initial capital letter, of course)
  # * retain the punctuation from the original phrase

end
