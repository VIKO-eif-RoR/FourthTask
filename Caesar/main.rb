# frozen_string_literal: true

# include Caesar class
require_relative 'caesar.rb'
# new object creation
cipher = Caesar.new

# call encrypt def
encrypt = cipher.encrypt('Hello world', 5)
# call decrypt def
decrypt = cipher.decrypt(encrypt, 5)
# print results
puts(encrypt)
puts(decrypt)
