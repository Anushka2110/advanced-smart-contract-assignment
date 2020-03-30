const Assembly_optimize = artifacts.require('Assembly_optimize');

contract("Assembly_optimize", () =>{
    let optimize;
   before(() => {
        return Assembly_optimize.deployed().then(instance => {
            optimize = instance;
        })
    })

    it('nativeLoops() should pass', async () => {
        const myNumber = 0;
        const gas = await optimize.nativeLoops.estimateGas(myNumber);
        const gasAsm = await optimize.asmLoops.estimateGas(myNumber);
        expect(gas).to.be.gt(gasAsm, "Assembly should be more gas efficient");

        const result = await optimize.nativeLoops(myNumber);
        const resultAsm = await optimize.asmLoops(myNumber);
        expect(result).to.be.a.bignumber.that.equal(resultAsm, "result should match");
    })
})