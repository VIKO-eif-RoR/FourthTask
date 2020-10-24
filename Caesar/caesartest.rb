# frozen_string_literal: true

require_relative 'Caesar.rb'
require 'test/unit'

# Test class for Caesar cipher testing
class CaesarTest < Test::Unit::TestCase
  def test_encryption
    key = 5
    encrypt = 'Hello'
    encrypted = 'Mjqqt'
    cipher = Caesar.new
    encrypt = cipher.encrypt(encrypt, key)
    assert_equal(encrypted, encrypt)
  end

  def test_decryption
    key = 5
    decrypt = 'Mjqqt'
    decrypted = 'Hello'
    cipher = Caesar.new
    decrypt = cipher.decrypt(decrypt, key)
    assert_equal(decrypted, decrypt)
  end

  def test_encryption_with_negative_key
    key = -1
    encrypt = 'Hello'
    encrypted = 'Gdkkn'
    cipher = Caesar.new
    encrypt = cipher.encrypt(encrypt, key)
    assert_equal(encrypted, encrypt)
  end

  def test_decryption_with_negative_key
    key = -1
    decrypt = 'Gdkkn'
    decrypted = 'Hello'
    cipher = Caesar.new
    decrypt = cipher.decrypt(decrypt, key)
    assert_equal(decrypted, decrypt)
  end

  def test_encryption_with_not_symbols
    key = 5
    encrypt = '!@#$%^&*()'
    encrypted = '&E()*c+/-.'
    cipher = Caesar.new
    encrypt = cipher.encrypt(encrypt, key)
    assert_equal(encrypted, encrypt)
  end

  def test_both_methods
    key = 5
    encrypt = 'Test'
    cipher = Caesar.new
    decrypt = cipher.encrypt(encrypt, key)
    decrypt = cipher.decrypt(decrypt, key)
    assert_equal(encrypt, decrypt)
  end
end
