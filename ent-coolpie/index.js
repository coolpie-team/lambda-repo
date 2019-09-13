const axios = require("axios");

const cs=require("../ent-shared/CallResult.js");

const labelMap=require("./LabelMap.js");

//lambda handler
exports.handler = async function(event) {
  var version="v1";

  //console.log("FUNC-ID:"+version+":STARTED");

  var hrstart = process.hrtime();

  var jsonEvent=JSON.stringify(event);

  console.log("EVENT:\n"+jsonEvent);

  var result=new cs.CallResult();
  result.version=version; //test

  var url=labelMap.LabelMap[event.label];

  console.log("URL:\n"+url);

  try {
    var response = await axios.get(url);

    result.readOk(response);

  } catch (error) {

    result.readError(error);
  }

  console.log("RESULT:\n"+JSON.stringify(result));

  var hrend = process.hrtime(hrstart);

  console.info('Execution time (hr): %ds %dms', hrend[0], hrend[1] / 1000000);

  return result;

};

//comment/uncomment to test run in local

//async function test(){
//  var event={label:"longRun"};
//  var result=await exports.handler(event);
//
//  console.log(result);
//};
//test();


