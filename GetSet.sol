// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


contract Get_Set{

      uint256 public val;
      string public char;
      int256 public Data;
    address public _address;
    bool public boolData;
    bytes public bytesData;
    uint256[] public Array;

       mapping(uint256 => string) public map;

// this is for map

 function setmap(uint256 _key, string memory _val) public {
        map[_key] = _val;
    }

     function getmap(uint256 _key) public view returns (string memory) {
        return map[_key];
    }


    // THIS IS FOR UINT256

      function getuint() public view returns (uint256){
        return val;
      }

      function setuint(uint256  _uint) public  {
           val = _uint;
      }

      // THIS IS FOR STRING

      function getstring() public view  returns(string memory){
        return char;
      }

      function setstring(string memory _str) public {
        char = _str;
      }


      // THIS IS FOR INT256

      function getint() public view returns(int256) {
    return Data ;
    }

      function setint(int256 _int) public {
        Data =_int;
    }

    // THIS IS FOR ADDRESS

       function getaddr() public view returns (address) {
        return _address;
    }
    

     function setaddr(address _addr) public {
        _address = _addr;
    }

    // THIS IS FOR BOOLEAN 

 function getbool() public view returns (bool) {
        return boolData;
    }

     function settbool(bool _boolean) public {
        boolData =_boolean;
    }

    // THIS IS FOR MEMORY

     function getbytes() public view returns (bytes memory) {
        return bytesData;
    }

     function setbytes(bytes memory _bytes) public {
        bytesData =_bytes;
    }

    // THIS IS FOR ARRAY

  function getarray() public view returns (uint256[] memory) {
        return Array;
    }


 function setarray(uint256[] memory _arr) public {
        Array =_arr;
    }



}