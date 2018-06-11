cronJob = require('cron').CronJob
time = require('time')

module.exports = (robot) ->

    cronjob = new cronJob(
      cronTime: " 0 52 21 * * *"    # 実行する時間
      start:    true                # すぐにcronのjobを実行するかどうか
      timeZone: "Asia/Tokyo"        # タイムゾーン
      onTick: ->                    # 実行処理
        now = new time.Date()
        robot.send {room: "#general"}, now.getHours()+"時"+now.getMinutes()+"分になりました〜！"
    )