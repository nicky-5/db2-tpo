use('tpDb');
config.set("displayBatchSize", 1000);
db.getCollection('albumlist').aggregate([
    {
        $group: {
            _id: "$Year",
            cantidad: { $sum: 1 }
        }
    },
    {
        $sort: {
            cantidad: -1
        }
    }
]);