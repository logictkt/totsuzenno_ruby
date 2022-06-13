argv = ARGV
str = argv[0]

# ＿人人人人人人＿
# ＞　突然の死　＜
# ￣Y^Y^Y^Y^Y^Y^￣

top_first_str = '＿'
top_last_str = '＿'
center_first_str = '＞'
center_last_str = '＜'
bottom_first_str = '￣'
bottom_last_str = '￣'

top_separator = '人'
middle_separator = '　'
bottom_separator = 'Y^'

str_length = 0.0
str.each_char { |s| str_length += (s.bytesize == 1 ? 0.5 : 1) }

result = ''

result << top_first_str
(str_length.to_i + 2).times do
  result << top_separator
end
result << top_last_str

result << "\n"

result << center_first_str
result << middle_separator
result << str
result << middle_separator
result << center_last_str

result << "\n"

result << bottom_first_str
(str_length.to_i + 2).times do
  result << bottom_separator
end
result << bottom_last_str

puts result
