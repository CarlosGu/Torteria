def translate

  p arr_usu = ARGV
  alpha = ('a'..'z').to_a
  vowels = %w[a e i o u]
  consonants = alpha - vowels

  arr_usu.each do |words|
    if vowels.include?(words[0])
      puts words + 'way'
    elsif consonants.include?(words[0]) && consonants.include?(words[1])
      puts words[2..-1] + words[0..1] + 'ay'
    elsif consonants.include?(words[0])
      puts words[1..-1] + words[0] + 'ay'
    else
      puts words # return unchanged
    end
  end
end

translate
# p translate('apple') == "appleway"
# p translate('cherry')  == "errychay"
# p translate('dog') == "ogday"
# p translate('trash') == "ashtray"