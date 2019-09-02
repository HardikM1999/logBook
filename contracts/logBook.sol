pragma solidity ^0.5.0;

contract logBook
{
    struct Service
    {
        uint vin;
        string serv_message;
        uint date;
    }
    mapping(uint => Service) public Record;
    uint public recordCnt;
    constructor() public
    {
        recordCnt = 0;
    }
    function addService(uint vehicle_id,string memory message,uint date) public
    {
        recordCnt++;
        Record[recordCnt] = Service({vin: vehicle_id,serv_message: message,date: date});
    }
    function seeService(uint recordID) public returns(bool exists,uint vehicle_id,string memory message,uint date)
    {
        vehicle_id = 0;
        date = 0;
        message = "";
        exists = false;
        if(recordCnt <= recordID)
        {
            exists = true;
            vehicle_id = Record[recordCnt].vin;
            message = Record[recordCnt].serv_message;
            date = Record[recordCnt].date;
        }
        return (exists,vehicle_id,message,date);
    }
} 