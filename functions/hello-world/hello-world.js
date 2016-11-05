console.log('Loading function');

exports.handler = function(event, context, callback) {

    // console.log(JSON.stringify(event, null, 2));
    event.Records.forEach({
        var payload = new Buffer().toString('ascii');
        console.log('Decoded payload:', payload);
    });

    callback(null, 'Hello World');
}

