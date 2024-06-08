use('tpDb');
db.getCollection('albumlist').updateMany(
    {},
    [{
        $set: {
            score: {
                $subtract: [501, "$Number"]
            }
        }
    }]
);