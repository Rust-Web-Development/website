+++
title = "Why choose Rust for Web Development?"
date = 2021-06-15
+++

Choosing Rust for web development is two-fold. First, we need to look at why you want to choose it as a programming language by itself, and then look at if it is a good match for web development in general.

### Rich type system

Rust is a strictly typed language, with a flexible way of expressing yourself. You can define your own objects (`struct`):

```rust
struct User {
    name: String,
    first_name: String,
    age: u64,
    address: String,
}
```

We already see here that we can improve this piece of code by giving it more meaning. We can add additional structures around information like address and name:

```rust
struct Name {
    first: String,
    last: String,
}

struct Address: {
    street_name: String,
    house_number: u64,
    city: String,
    country: String,
    postal_code: u64,
}

struct User {
    name: Name,
    age: u64,
    address: Address,
}

```

But what if we don't have the `age` or `address` of a user? Rust has Enums as well. One popular one is the Option enum, which gives you the ability to express if something has a value or not. So no null pointers or undefined in Rust:

```rust
enum Option<T> {
    None,
    Some(T),
}
```

We can see it in action in our user struct:

```rust
struct User {
    name: Name,
    age: Option<u64>,
    address: Option<Address>,
}
```

We later on can check in our code if an object has a variable set or not, and the compiler errors if we try to access a variable which might not be set:

```rust
fn check_age(user: User) {
    match user.age {
        Some(age) => println!("The age is {}", age),
        None => println!("We don't know the age of the user!"),
    }
}
```

Implementing behavior on these types is done via so-called impl block:

```rust
impl User {
    fn new(name: Name) -> User {
        name,
        age: None,
        addresS: None,
    }

    fn assign_age(&self, age: u64) -> User {
        self.age = age;

        self
    }

    is_old_enough(&self, required_age: u64) -> bool {
        self.age >= required_age
    }
}

fn main() {
    let n = Name { first_name: "FirstName".to_string(), name: "LastName".to_string() };
    let u = User::new(n);
    n.assign_age(30);

    println!("{}" n.is_old_enough(18));
}

```

### Ownership

Rust also has no garbage collection, so it has a small runtime footprint. It almost has the compile size of C. But where it differs, is its compiler. Rust checks *before* you compile your code, if there are no errors, access to not existing memory and so forth in place.It can do this by a new concept called "ownership". Whenever a new value is being created, this value has one explicit owner. 


