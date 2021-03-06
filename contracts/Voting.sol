pragma solidity ^0.4.24;

contract Voting {

	mapping(bytes32=>uint8) public votesReceived;


	bytes32[] public candidateList;


	function Voting(bytes32[] candidateNames) public {
		candidateList = candidateNames;
	}

	function totalVotesFor(bytes32 candidate) public view returns (uint){
		require(validCandidate(candidate));
		return votesReceived[candidate];
	}


	function vote(bytes32 candidate) public {
		require(validCandidate(candidate));
		votesReceived[candidate] += 1;
	}

	function validCandidate(bytes32 candidate) view public returns(bool) {
		for(uint i=0;i<candidateList.length;i++){
			if(candidateList[i] == candidate){
				return true;
			}
		}
		return false;
	}
}