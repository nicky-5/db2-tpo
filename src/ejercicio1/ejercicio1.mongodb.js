use('tpDb');
db.getCollection('albumlist').aggregate([
    {
        $group: {
            _id: "$Year",
            cantidad: {$sum: 1}
        }
    },
    {
        $sort: {
            cantidad: -1
        }
    }
]);

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

db.getCollection('albumlist').find(
    {},
    {
        _id: 0,
        Artist: 1,
        score: 1
    }
);
