use('tpDb');
db.getCollection('albumlist').find(
    {},
    {
        _id: 0,
        Artist: 1,
        score: 1
    }
);