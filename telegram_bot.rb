require 'telegram/bot'
token = '1842467593:AAEtSROWF0gmZV5CGzpZ4QmCXNknbSFhdi0'
Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when '/start'
      bot.api.sendMessage(chat_id: message.chat.id, text: "Привет, #{message.from.first_name}")
      bot.api.sendMessage(chat_id: message.chat.id, text: "Как твои дела?")
    end
    when '/story'
    bot.api.sendMessage(chat_id: message.chat.id, text: "Однажды очень и очень давно декан изловил меня в момент моего возрождения из пепла.
      В пепел я превратился, проводив своего друга Серёжу Н-ва в армию.
      Рассказывал уже эту бесстыдную историю, прекрасно характеризующую моё разрушительное влияние на все стороны жизни людей, окружающих меня.")
    end
  end
end