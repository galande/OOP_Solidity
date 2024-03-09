// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.19;

contract Animal {
    function makeSound() public pure virtual returns(string memory) {
        return "Animal Makes Sound";
    } 
}

contract Dog is Animal {
    function makeSound() public pure override returns(string memory) {
        return "Bho Bho by Dog";
    }
}

contract Cat is Animal {
    function makeSound() public pure override returns(string memory) {
        return "Meow Meow by Cat";
    }
}

contract GenericAnimal is Animal {

}

contract Main {
    Animal animal1 = new Animal();
    //It will call function from Animal contract
    string public str1 = animal1.makeSound();

    //IMP: We can store dog in Animal
    Animal animal2 = new Dog();
    //It will check the function in Child Class if not then call Parent Class - In this case child(Dog) class
    string public str2 = animal2.makeSound();

    //IMP: We can store dog in Animal
    Animal animal3 = new Cat();
    //It will check the function in Child Class if not then call Parent Class - In this case child(Cat) class
    string public str3 = animal3.makeSound();

    //IMP: We can store dog in Animal
    Animal animal4 = new GenericAnimal();
    //It will check the function in Child Class if not then call Parent Class - In this case Parent Class Animal as not function available in Child Class
    string public str4 = animal4.makeSound();

}