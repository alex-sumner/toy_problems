const { expect } = require("chai")

describe("Story contract", function () {

    let story
    
    beforeEach(async function () {
        storyFactory = await ethers.getContractFactory("Story")
        story = await storyFactory.deploy()
        await story.deployed()
    })

    it("word at x[2][1] is 'there'", async function () {
        expect(await story.getWord(2, 1)).to.equal("there")
    })

})
