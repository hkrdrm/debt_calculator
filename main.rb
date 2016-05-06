puts "\n\n"
debt = 7780.69
interest_rate = 0.08
years_to_pay = 4
payments = 175
total_interest = 0

i = 0
year = 0
while debt > 0 do
  if(i != 0 && i%12 == 0)
    year += 1
    acrued_i = (debt * interest_rate)
    total_interest += acrued_i
    debt = debt + acrued_i
    puts "Year " + year.to_s + "\n"
    puts "   Debt            :: %10.2f \n" % debt
    puts "   Total Paymanets :: %10.2f \n" % (12 * payments)
    puts "   Interest        :: %10.2f \n\n\n" % acrued_i.to_s
  end

  debt -= payments
  i += 1
end

puts "Months        :: " + i.to_s + "\n"
puts "Years         :: " + year.to_s + "\n"
puts "------------------"
puts "Interest Paid :: %06.2f \n\n\n" % total_interest
