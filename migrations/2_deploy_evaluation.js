const CourseEvaluation = artifacts.require('./CourseEvaluation.sol')

module.exports = function(deployer) {
    deployer.deploy(CourseEvaluation)
}