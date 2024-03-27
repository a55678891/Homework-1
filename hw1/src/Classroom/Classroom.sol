// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentV1 {
    bool private _firstCall = true;

    function register() external returns (uint256) {
        if (_firstCall) {
            _firstCall = false;
            return 1000;
        }
        return 123;
    }
}
interface IClassroomV2 {
    function isEnrolled() external view returns (bool);
}

contract StudentV2 {
    function register() external view returns (uint256) {
        if (!IClassroomV2(msg.sender).isEnrolled()) {
            return 1000;
        } else {
            return 123;
        }
    }
}

contract StudentV3 {
function register() external view returns (uint256) {

        if (gasleft() < 7000) {
            return 123;
        }
        else{
            return 1000;
        }
    }
}
