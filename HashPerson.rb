person = {first_name: 'Bob', email: 'bob@mail.com', phone: '12345690'}
person.merge!({ocupation: 'Manager'})
p person[:first_name] == "Bob"
p person == {:first_name=>"Bob", :email=>"bob@mail.com", :phone=>"12345690", :ocupation=>"Manager"}