console.log('Loading function');

exports.handler = function(event, context, callback) {

    // console.log(JSON.stringify(event, null, 2));
    event.Records.forEach(function(record) {
        var payload = new Buffer(record.kinesis.data, 'base64').toString('ascii');
        console.log('Decoded payload:', payload);
    });

    callback(null, 'Hello World');
}

