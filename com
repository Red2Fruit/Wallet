
import { Telegraf } from 'telegraf' 
 
const bot = new Telegraf('6339494823:AAHn7jnUcIt6qphAuM4UB9H6bltSWQdrhL4') 
bot.start((ctx) => ctx.reply('Welcome')) 
bot.help((ctx) => ctx.reply('Send me a sticker')) 
bot.on('sticker', (ctx) => ctx.reply('👍')) 
bot.hears('hi', (ctx) => ctx.reply('Hey there')) 
bot.launch()
