#!/usr/bin/env ruby

$LOAD_PATH << '.'
require 'account_number_importer'
importer = AccountNumberImporter.new('account_number_data.txt')
importer.account_numbers.each do |number|
  puts number.parse.inspect
end
