# frozen_string_literal: true

# Caesar cipher class
class Caesar
  # Encryption method
  def encrypt(string, key)
    string_to_ascii_array = string.chars.map(&:ord)
    shifted = string_to_ascii_array.map { |char| char + key }
    shifted.map(&:chr).join
  end

  # Decryption method
  def decrypt(string, key)
    string_to_ascii_array = string.chars.map(&:ord)
    shifted = string_to_ascii_array.map { |char| char - key }
    shifted.map(&:chr).join
  end
end

# encrypt = Caesar.new.encrypt("Hello World", 5)
# puts(encrypt)
# puts(Caesar.new.decrypt(encrypt, 5))
