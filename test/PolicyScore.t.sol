// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "../src/PolicyScore.sol";

contract PolicyScoreTest {
    function test_case_1() public {
        PolicyScore scorer = new PolicyScore();
        PolicyScore.Signal memory signal = PolicyScore.Signal(66, 99, 8, 11, 9);
        require(scorer.score(signal) == 176, "score mismatch");
        require(scorer.accepted(signal) == true, "decision mismatch");
    }
    function test_case_2() public {
        PolicyScore scorer = new PolicyScore();
        PolicyScore.Signal memory signal = PolicyScore.Signal(62, 74, 23, 13, 12);
        require(scorer.score(signal) == 110, "score mismatch");
        require(scorer.accepted(signal) == false, "decision mismatch");
    }
    function test_case_3() public {
        PolicyScore scorer = new PolicyScore();
        PolicyScore.Signal memory signal = PolicyScore.Signal(90, 94, 25, 13, 7);
        require(scorer.score(signal) == 167, "score mismatch");
        require(scorer.accepted(signal) == true, "decision mismatch");
    }
}
