function add (x, y){

    var sum = x + y;

    return new Promise(function (resolve, reject){
        resolve(sum);
        reject("You fucked up");
    });
}

var compute = add(4,2);

compute.then(function(resolve, reject){
    return resolve + 10;
}).then(function(resolve,reject){
    console.log(resolve);
});