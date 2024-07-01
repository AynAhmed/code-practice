#give 2 DNA sequences 
#count ever time that its does not match a char

def hamming_distance(dna1, dna2)


    distance = 0

    # Iterate through each character in the sequences
    dna1.chars.each_index do |i|
      # Compare characters at each position
      if dna1[i] != dna2[i]
        distance += 1
      end
    end
    
    return distance
  end
  
  # Example:
  puts hamming_distance("GAGCCTACTAACGGGAT", "CATCGTAATGACGGCCT")
