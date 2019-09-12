
module.exports.CallResult=function(){
  this.ok=false;
  this.data=null;
  this.errorMessage=null;
  this.errorCode=null;
  this.headers=null;
  this.status=null;
  this.statusText=null;

  this._start=null;

};

module.exports.CallResult.prototype.readOk=function(resp){
  this.ok=true;
  this.data=resp.data;
  this.headers=resp.headers;
  this.status=resp.status;
  this.statusText=resp.statusText;
};

module.exports.CallResult.prototype.readError=function(err){
  this.ok=false;
  this.errorMessage=err.message;
  this.errorCode=err.code;
};
