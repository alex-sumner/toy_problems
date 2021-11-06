// SPDX-License-Identifier: MIT

pragma solidity 0.8.2;

contract Story {

    string[][3] private x = [["Once", "upon",  "a",       "time"],
                             ["in",   "a",     "kingdom", "far" ],
                             ["away", "there", "lived",   "a"   ]];

    //the following version doesn't compile:
    //string[][3] private x = [["Once", "upon", "a"],
    //                         ["time", "in", "a"],
    //                         ["kingdom", "far", "away"],
    //                         ["there", "lived", "a"]];

    function getWord(uint index1, uint index2) public view returns (string memory) {
        return x[index1][index2];
    }

}
