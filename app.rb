require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

=begin
If I visit the path /square/new, I should see a form with a label and an input to enter a number.
If I submit that form, I should see the square of the number that I entered.

If I visit the path /square_root/new, I should see a form with a label and an input to enter a number.
If I submit that form, I should see the square root of the number that I entered.

If I visit the path /payment/new, I should see a form with labels and inputs to enter three values:

If I visit the path /random/new, I should see a form with labels and inputs to enter two numbers, a minimum and a maximum.
=end
