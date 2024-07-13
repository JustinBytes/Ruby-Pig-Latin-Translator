def pig_latin(word)
    vowels = %w[a e i o u]
    
    if vowels.include?(word[0].downcase)
      "#{word}ay"
    else
      consonant_cluster = word.slice!(/^[^aeiouAEIOU]+/)
      "#{word}#{consonant_cluster}ay"
    end
  end
  
  def refine_case(original, translated)
    if original[0] == original[0].upcase
      translated[0] = translated[0].upcase
      translated[1..] = translated[1..].downcase
    end
    translated
  end
  
  def refine_sentence(word)
    punctuation = word.match(/[^a-zA-Z]+$/)
    word_without_punctuation = word.sub(/[^a-zA-Z]+$/, '')
    pig_latin_word = pig_latin(word_without_punctuation.downcase)
    preserved_word = refine_case(word_without_punctuation, pig_latin_word)
    punctuation ? preserved_word + punctuation[0] : preserved_word
  end
  
  def translate_sentence(sentence)
    sentence.split.map { |word| refine_sentence(word) }.join(" ")
  end
  
  puts "Enter a sentence to translate to Pig Latin:"
  input_sentence = gets.chomp
  translated_sentence = translate_sentence(input_sentence)
  
  puts "Pig Latin: #{translated_sentence}"
  