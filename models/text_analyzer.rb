# Your TextAnalyzer model code will go here.
class TextAnalyzer
<<<<<<< HEAD
  attr_accessor :text

  def initialize(text)
    @text = text
  end

  def count_of_words
    @text.split(" ").count
  end

  def count_of_vowels
    @text.downcase.scan(/[aeoui]/).count
  end

  def count_of_consonants
    @text.downcase.scan(/[bcdfghjklmnpqrstvwxyz]/).count
  end

def most_used_letter
    all_letters_in_string = @text.downcase.gsub(/[^a-z]/, '').split('') #gets rid of spaces and turns it into an array
    letters_to_compare = all_letters_in_string.uniq
    most_used_letter = ""
    letter_count = 0

    letters_to_compare.map do |letter|
      letter_repetitions = all_letters_in_string.count(letter)
      if letter_repetitions > letter_count
        letter_count = letter_repetitions
        most_used_letter = letter
      end
    end
    biggest = [most_used_letter, letter_count]
  end

end
=======
  attr_reader :text
 
  def initialize(text)
    @text = text.downcase
  end
 
  def count_of_words(" ")
    words.count
  end
 
  def count_of_vowels
    text.scan(/[aeoui]/).count
  end
 
  def count_of_consonants
    text.scan(/[bcdfghjklmnpqrstvwxyz]/).count
  end
 
  def most_used_letter
    s1 = text.gsub(/[^a-z]/, '') # gets rid of spaces
    arr = s1.split('')
    arr1 = arr.uniq
    arr2 = {}
 
    arr1.map do |c|
      arr2[c] =  arr.count(c)
    end
   
    biggest = { arr2.keys.first => arr2.values.first }
 
    arr2.each do |key, value|
      if value > biggest.values.first
        biggest = {}
        biggest[key] = value
      end
  end
 
    biggest
  
end
>>>>>>> c1af519edaa7f807fdf0944626dae8e2accbece3
