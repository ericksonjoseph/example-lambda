console.log('Loading function');

exports.handler = function(event, context, callback) {

    console.log(JSON.stringify(event, null, 2));

    callback(null, 'Hello World');
}

