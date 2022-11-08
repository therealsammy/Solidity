// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage
{
    uint256 favoriteNumber;

    function store(uint256 _favoriteNumber) public virtual {
        favoriteNumber = _favoriteNumber;
    }


    struct People {
        uint256 favoriteNumber;
        string name;
    }

    mapping(string => uint256) public nameToFavoriteNumber;

    People[] public people;


    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }


    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

}