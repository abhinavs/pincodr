#!/usr/bin/env ruby

class String
  def sanitize!
    unless self.blank?
      self.strip!
      self.gsub!( /\A"/m, "" )
      self.gsub!( /"\Z/m, "" )
      self.strip! # for such strings: %{""}
      self
    end
  end
end

require File.expand_path(File.dirname(__FILE__) + "/../config/boot")

unless ARGV.size == 1
  puts "Usage: import_pins.rb <file.psv>"
  exit
end

filename = ARGV.shift

# format: name|code|tehsil|district|state

DELIM = '|'
File.open(filename, "r") do |file|
  line = file.gets
  format = line.split(DELIM)
  format.each do |column|
    column.sanitize!
    column.downcase!
    column.gsub!(" ", "_")
  end

  unless format[0] == "name" && format[1] == "code" && format[2] == "tehsil" && format[3] == "district" && format[4] == "state"
    puts "format header doesn't match"
    exit
  end

  Pin.delete_all
  while line = file.gets
    next if line.sanitize!.blank?
    name, code, tehsil, district, state = line.split(DELIM)
    name.sanitize!
    code.sanitize!
    tehsil.sanitize!
    district.sanitize!
    state.sanitize!

    Pin.create!(:name => name,
               :code => code,
               :tehsil => tehsil,
               :district => district,
               :state => state)
  end
end

