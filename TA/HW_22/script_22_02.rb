# Insert data into each array.

BEGIN{
    name = "Denis Umanets"
    description = "Inserting data into 2 empty hashes"
    
    puts "#################################### "
    puts "Author \s\s\s\s\s : " + name
    puts "Date \s\s\s\s\s\s\s\s: " + Time.now.to_s[0 .. 18]
    puts ""
    puts "Ruby version : " + RUBY_VERSION
    puts "Script \s\s\s\s\s\s: " + __FILE__.chop.chop.chop
    puts "Description \s: " + description
    puts "#################################### "
    puts ""
}
puts "Data is inserted into hash 'year': #{year= {
    :January =>
[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31],
    :February =>
[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28],
    :March =>
[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31],
    :April =>
[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30],
    :May =>
[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31],
    :June =>
[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30],
    :July =>
[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31],
    :August =>
[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31],
    :September =>
[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30],
    :October =>
[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31],
    :November =>
[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30],
    :December =>
[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31]
}}"


puts "Data is inserted into hash 'contacts': #{contacts= {
    m_freeman: {id: 1, first_name: "Magee", last_name: "Freeman", phone: "415 555-4597", age: 33, email: "magee.freeman@gmail.com"},
    r_haynes: {id: 2, first_name: "Reed", last_name: "Haynes", phone: "415 555-4657", age: 56, email: "reed_haynes@hotmail.com"},
    p_sosa: {id: 3, first_name: "Plato", last_name: "Sosa", phone: "650 555-4555", age: 18, email: "plato.sosa@gmail.com"},
    r_skinner: {id: 4, first_name: "Rogan", last_name: "Skinner", phone: "408 555-9702", age: 22, email: "rogan@gmail.com"},
    c_water: {id: 5, first_name: "Castor", last_name: "Waters", phone: "415 555-7344", age: 24, email: "castor@mac.com"},
    a_cash: {id: 6, first_name: "Abbot", last_name: "Cash", phone: "925 555-2322", age: 61, email: "abbot_cash@hotmail.com"},
    o_nunez: {id: 7, first_name: "Oren", last_name: "Nunez", phone: "415 555-3599", age: 42, email: "oren.nunex@yahoo.com"},
    i_moore: {id: 8, first_name: "Isaiah", last_name: "Moore", phone: "415 55-1123", age: 37, email: "isaiah_moore@yahoo.com"},
    g_bulter: {id: 9, first_name: "Gregory", last_name: "Butler", phone: "408 555-8976", email: "eu.neque@odio.ca"},
    t_pickett: {id: 10, first_name: "Timothy", last_name: "Pickett", phone: "415 555-3321", age: 44, email: "feugiat@yahoo.com"},
    a_paul: {id: 11, first_name: "Amery", last_name: "Paul", phone: "415 555-5549", age: 45, email: "amery_paul@mac.com"},
    l_curtis: {id: 12, first_name: "Lyle", last_name: "Curtis", phone: "408 555-8897", age: 21, email: "ipsum@quam.ca"},
    a_cash: {id: 13, first_name: "Amery", last_name: "Cash", phone: "408 555-4597", age: 25, email: "amery_cash@yahoo.com"},
    o_hogan: {id: 14, first_name: "Odesseus", last_name: "Hogan", phone: "718 555-1234", age: 33, email: "nunc@mac.org"},
    v_carson: {id: 15, first_name: "Vaughan", last_name: "Carson", phone: "212 555-1154", age: 37, email: "v_carson@eteros.edu"},
    l_guthrie: {id: 16, first_name: "Lance", last_name: "Guthrie", phone: "856 555-4498", age: 44, email: "lance.guthrie@gmail.com"},
    r_charles: {id: 17, first_name: "Raphael", last_name: "Charles", phone: "415 555-2234", age: 52, email: "r.charles@eu.org"},
    r_sanford: {id: 18, first_name: "Ronan", last_name: "Sanford", phone: "650 555-2234", age: 54, email: "semper.tellus@magnaUt.edu"},
    a_wells: {id: 19, first_name: "Abel", last_name: "Wells", phone: "415 555-3298", age: 25, email: "neque.venenatis@gmail.com"},
    k_knox: {id: 20, first_name: "Kasper", last_name: "Knox", phone: "650 555-4469", age: 30, email: "kknox@aenean.org"}
}}"