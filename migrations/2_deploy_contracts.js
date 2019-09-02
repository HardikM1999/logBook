const logBook = artifacts.require("logBook");

module.exports = function(deployer){
    deployer.deploy(logBook);
};