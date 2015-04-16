require 'premailer'

file = "css_in_head.html"

#premailer = Premailer.new(file, :warn_level => Premailer::Warnings::SAFE)
premailer = Premailer.new(file)
puts premailer.to_inline_css
