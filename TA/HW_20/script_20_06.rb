contacts=[
[1,"Magee Freeman","415 555-4597",33,"magee.freeman@gmail.com"],
[2,"Reed Haynes","415 555-4657",56,"reed_haynes@hotmail.com"],
[3,"Plato Sosa","650 555-4555",18,"plato.sosa@gmail.com"],
[4,"Rogan Skinner","408 555-9702",22,"rogan@gmail.com"],
[5,"Castor Waters","415 555-7344",24,"castor@mac.com"],
[6,"Abbot Cash","925 555-2322",61,"abbot_cash@hotmail.com"],
[7,"Oren Nunez","415 555-3599",42,"oren.nunex@yahoo.com"],
[8,"Isaiah Moore","415 55-1123",37,"isaiah_moore@yahoo.com"],
[9,"Gregory Butler","408 555-8976",39,"eu.neque@odio.ca"],
[10,"Timothy Pickett","415 555-3321",44,"feugiat@yahoo.com"],
[11,"Amery Paul","415 555-5549",45,"amery_paul@mac.com"],
[12,"Lyle Curtis","408 555-8897",21,"ipsum@quam.ca"],
[13,"Amery Cash","408 555-4597",25,"amery_cash@yahoo.com"],
[14,"Odesseus Hogan","718 555-1234",33,"nunc@mac.org"],
[15,"Vaughan Carson","212 555-1154",37,"v_carson@eteros.edu"],
[16,"Lance Guthrie","856 555-4498",44,"lance.guthrie@gmail.com"],
[17,"Raphael Charles","415 555-2234",52,"r.charles@eu.org"],
[18,"Ronan Sanford","650 555-2234",54,"semper.tellus@magnaUt.edu"],
[19,"Abel Wells","415 555-3298",25,"neque.venenatis@gmail.com"],
[20,"Kasper Knox","650 555-4469",30,"kknox@aenean.org"]
]

# print contacts

# Check the class of the array.

puts "Class of array 'contacts' is: #{contacts.class}"

# Check the size of each array.

puts "Size of array 'contacts' is: #{contacts.size}"

# Check the age of first item in array.

puts "Age of the first item of array is: #{contacts[0][3]}"

# Check the phone of the last item in array.

puts "The phone of the last item in array is: #{contacts[-1][2]}"

# Display the array in descending order by ID.

puts "Sorting the array in descending order is: #{contacts.reverse}"

# Sort the array in ascending order by name:

puts "Sorting the array in ascending order by name is: #{contacts.sort{|a,b| a[1]<=>b[1]}}"

# Sort the array in ascending order by age:

puts "Sorting the array in ascending order by age is: #{contacts.sort{|a,b| a[3]<=>b[3]}}"

# Display all items of the array with Last Name Cash.

puts contacts.select{|item|item[1] =~/Cash/}

# Display all items of the array with area code 415.

puts contacts.select{|item|item[2] =~/^415/}

# Display all items of the array where age > 40.

puts contacts.select{|item|item[3] > 40}

# For Amery Paul replace phone # from 415 555-5549 to 650 123-9876.

contacts[10] = [11, "Amery Paul", "650 123-9876", 45, "amery_paul@mac.com"]

puts contacts [10]
