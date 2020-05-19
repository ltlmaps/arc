pragma solidity ^0.5.17;

import "../schemes/ContributionRewardExt.sol";


contract RewarderMock is Rewarder {
    ContributionRewardExt public contributionRewardExt;

    function initialize(address payable _contributionRewardExt) external {
        contributionRewardExt = ContributionRewardExt(_contributionRewardExt);
    }

    function redeemEtherByRewarder(bytes32 _proposalId, address payable _beneficiary, uint256 _amount)
    public {
        contributionRewardExt.redeemEtherByRewarder(_proposalId, _beneficiary, _amount);
    }

    function redeemNativeTokenByRewarder(bytes32 _proposalId, address payable _beneficiary, uint256 _amount)
    public {
        contributionRewardExt.redeemNativeTokenByRewarder(_proposalId, _beneficiary, _amount);
    }

    function redeemExternalTokenByRewarder(bytes32 _proposalId, address payable _beneficiary, uint256 _amount)
    public {
        contributionRewardExt.redeemExternalTokenByRewarder(_proposalId, _beneficiary, _amount);
    }

    function redeemReputationByRewarder(bytes32 _proposalId, address payable _beneficiary, uint256 _amount)
    public {
        contributionRewardExt.redeemReputationByRewarder(_proposalId, _beneficiary, _amount);
    }
}