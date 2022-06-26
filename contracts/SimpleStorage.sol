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

    function store(uint256 _favNumber ) public{
        favoriteNumber = _favNumber;
    }

    // /view, read favoriteNUmber 
    function retrive() public view returns(uint256){
        return favoriteNumber;
    }

}