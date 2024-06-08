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