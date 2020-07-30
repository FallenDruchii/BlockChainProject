const CourseEvaluation = artifacts.require('CourseEvaluation')

contract("CourseEvaluation", async accounts =>{
    let courseevaluation
    let host
    let nonhost

    beforeEach(async() => {
        host = accounts[0]
        nonhost = accounts[1]
        courseevaluation = await CourseEvaluation.new({from: host})

    })
    it('deploys', async() => {
        expect(courseevaluation.address).to.be.ok
    });

    it('shows questions', async() => {
        const questionID = 6
        const host = accounts[0]
        expect(await courseevaluation.showQuestion(questionID)).to.be.a('string')
    });

    it('shows comments', async() => {
        expect(await courseevaluation.showComment()).to.be.a('string')
    });

});