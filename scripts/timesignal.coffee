cronJob = require('cron').CronJob
time = require('time')

module.exports = (robot) ->
    
    new cronJob (
      cronTime: '0 0 9 * * 1-5'
      onTick: ->       
        robot.send {room: "#general"}, "@here おはようございます！今日も一日がんばりましょう！！ :chicken: "
      start:    true
      timeZone: "Asia/Tokyo"
    )
    
    new cronJob (
      cronTime: '0 0 12 * * 1-5'
      onTick: ->       
        robot.send {room: "#general"}, "@here 昼ごはんの時間だよ! :bento: "
      start:    true
      timeZone: "Asia/Tokyo"
    )
    
    
    new cronJob (
      cronTime: '0 0 13 * * 1-5'
      onTick: ->       
        robot.send {room: "#general"}, "@here 午後も頑張って行きましょう！ "
      start:    true
      timeZone: "Asia/Tokyo"
    )
    
    
    new cronJob (
      cronTime: '0 0 9 * * 5'
      onTick: ->       
        robot.send {room: "#general"}, "@here 本日は金曜日です。ITRの入力を忘れずにね！ "
      start:    true
      timeZone: "Asia/Tokyo"
    )
    
    new cronJob (
      cronTime: '0 0 9 * * 1-5'
      onTick: ->       
        robot.send {room: "#general"}, "@here 今日も一日お疲れ様でした。 :beer: "
      start:    true
      timeZone: "Asia/Tokyo"
    )
    
    # new cronJob (
    #   cronTime: '0 27 23 * * 1-5'
    #   onTick: ->       
    #     robot.send {room: "#general"}, "test"
    #   start:    true
    #   timeZone: "Asia/Tokyo"
    # )
   
  
