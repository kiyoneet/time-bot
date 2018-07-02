cronJob = require('cron').CronJob
time = require('time')

module.exports = (robot) ->
    
    new cronJob (
      cronTime: '0 0 9 * * 1-5'
      onTick: ->       
        robot.send {room: "#general"}, "おはようございます！今日も一日がんばりましょう！！ :chicken: "
      start:    true
      timeZone: "Asia/Tokyo"
    )
    
    new cronJob (
      cronTime: '0 30 17  * * 5'
      onTick: ->       
        robot.send {room: "#general"}, "@here 本日は金曜日です。ITRの入力を忘れずにね！ "
      start:    true
      timeZone: "Asia/Tokyo"
    )
    
    new cronJob (
      cronTime: '0 0 18 * * 1-5'
      onTick: ->       
        robot.send {room: "#general"}, "今日も一日お疲れ様でした。 :beer: "
      start:    true
      timeZone: "Asia/Tokyo"
    )
    
   
  
