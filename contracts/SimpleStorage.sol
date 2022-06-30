// SPDX-License-Identifier: MIT
pragma solidity >=0.8.8;


contract SimpleStorage{
    //boleean, uin , int, address, bytes
    //membuat variable 
    // bool hashFavoriteNumber =  true;
    // uint256 favoriteNumber = 5;
    // string favoriteNumberInText = "Five";
    // int256 favoriteInt = -5;
    // address myaddres = 0x69Ec32efC15BC11Dd7fd0DF3aBcb3DE4Bf3A013a;
    // bytes32 faforiteBytes = "cat";

    // function
    // public type akan membuat/membaca button setleah di deploy
    uint256 public favoriteNumber;

    // struct and array
    struct People{
        uint256 favoriteNumber;
        string name;
    }

    People public person = People({favoriteNumber:2, name:"agustio"});
    
    People[] public people;

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        People memory newPerson = People(_favoriteNumber,_name);
        people.push(newPerson);
        //called to mapping
        nameToFavoriteNumber[_name] = _favoriteNumber;
        
    }

    // mapping data
    mapping(string => uint256) public nameToFavoriteNumber;

    // memory temporary bisa diganti
    // calldata temporary bisa diganti
    // storage temporary tapi tidak bisa diganti

// penambahan virtual untuk method override
    function store(uint256 _favNumber ) public virtual{
        favoriteNumber = _favNumber;
    }

    // /view, read favoriteNUmber 
    function retrive() public view returns(uint256){
        return favoriteNumber;
    }

}