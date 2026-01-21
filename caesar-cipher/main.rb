=begin
  @author Kyle Sherman
  @date 01/20/2025
=end

def caesar_cipher(string, distance)
  shift_dist = distance.to_i()

  string.chars.map do |char|
    if char =~ /[a-z]/
      (((char.ord - 'a'.ord + shift_dist) % 26) + 'a'.ord).chr
    elsif char =~ /[A-Z]/
      (((char.ord - 'A'.ord + shift_dist) % 26) + 'A'.ord).chr
    else
      char
    end
  end.join
end


print "Input string to cipher: "
input_string = gets

print("Input cipher distance: ")
cipher_dist = gets

puts caesar_cipher input_string, cipher_dist