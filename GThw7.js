
//Вывести незаблокированных юзеров из Germany и USA

db.users.find({
    $and: [
        { country: { $in: ["Germany", "USA"] } },
        { is_blocked: { $ne: true } }
    ]
})

//-----------------------------------------------------------------

//Вывести названия треков продолжительностью от 5 до 15 мин

db.tracks.find(
    {
        duration_secs: { $gte: 5 * 60, $lte: 15 * 60 }
    },
    { title: 1, _id: 0 }
)

//------------------------------------------------------------------

//Разблокировать юзеров не из Germany

db.users.updateMany(
    { country: {$ne: 'Germany' }},
    {
       $set: {
            is_blocked: false
        }
    }
)

//-------------------------------------------------------------------


//Увеличить баланс назаблокированных юзеров не из Germany на 150 EUR


db.users.updateMany(
    { $and: [
        { country: { $ne: "Germany" } },
        { is_blocked: { $ne: true } }
    ]},
    { $inc: { balance: 150 } }
)

//-------------------------------------------------------------------