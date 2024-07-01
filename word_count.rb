def count_words(subtitle)
    # lowercase text
    subtitle = subtitle.downcase
  
    # Split the text into words
    words = subtitle.scan(/\b[\w']+\b/)
  
    # Initialize a hash to count words
    word_counts = Hash.new(0)
  
    # Count each word
    words.each do |word|
      word_counts[word] += 1
      
    end
  
    # Return the word counts
    word_counts
  end
  
  # output:
  subtitle = "That's the password: 'PASSWORD 123'!, cried the Special Agent.\nSo I fled."
  word_counts = count_words(subtitle)
  
  word_counts.each do |word, count|
    puts "#{word}: #{count}"
  end