pragma solidity ^0.4.24;


contract Random {

	address[16] public ramdomAddres;

	function getRamdomAddress(uint _rand) public view returns(address) {
		return ramdomAddres[_rand];
	}

}