// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

// definingAContract
contract SimpleStorage { 
    uint256 public favoriteNumber;
    mapping(string => uint256) public nameToFavouriteNumber;
    struct People { 
        uint256 favoriteNumber; 
        string name;
    }

    People[] public people; 
    // functionToUpdateFavouriteNumber
    function store(uint256 _favouriteNumber) public virtual { 
        favoriteNumber = _favouriteNumber;
    }

        function retrieve() public view returns (uint256){
        return favoriteNumber;
    }

    function addPeorson(uint256 _favouriteNumber, string memory _name ) public{ 
        people.push(People(_favouriteNumber, _name));

        nameToFavouriteNumber[_name] = _favouriteNumber;
    }
}  
