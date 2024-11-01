// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "./DataStorage.sol";

contract DataCreator {

    DataStorage[] public dataStorageArray;

    function deployDataStroageContract() public {
    DataStorage dataStorage = new DataStorage();
    dataStorageArray.push(dataStorage);
    }

    // intraction of contract from another contract
    function dcStoreNumber (uint _index, uint _number) public {
        // we intract with contract using two ways
        //  - Adress(contract address)
        //  - ABI(Applicaiation Binary Interface)
        DataStorage myContractAdress = dataStorageArray[_index];
        myContractAdress.storeNumber(_number);
    }

    function retriveData (uint _index) public view returns (uint) {
        return dataStorageArray[_index].getNumber();
    }
}




