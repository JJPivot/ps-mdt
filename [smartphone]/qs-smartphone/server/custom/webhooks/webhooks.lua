--░██╗░░░░░░░██╗███████╗██████╗░██╗░░██╗░█████╗░░█████╗░██╗░░██╗░██████╗
--░██║░░██╗░░██║██╔════╝██╔══██╗██║░░██║██╔══██╗██╔══██╗██║░██╔╝██╔════╝
--░╚██╗████╗██╔╝█████╗░░██████╦╝███████║██║░░██║██║░░██║█████═╝░╚█████╗░
--░░████╔═████║░██╔══╝░░██╔══██╗██╔══██║██║░░██║██║░░██║██╔═██╗░░╚═══██╗
--░░╚██╔╝░╚██╔╝░███████╗██████╦╝██║░░██║╚█████╔╝╚█████╔╝██║░╚██╗██████╔╝
--░░░╚═╝░░░╚═╝░░╚══════╝╚═════╝░╚═╝░░╚═╝░╚════╝░░╚════╝░╚═╝░░╚═╝╚═════╝░



--      _       _     _   _
--     / \   __| | __| | | |__   ___ _ __ ___
--    / _ \ / _` |/ _` | | '_ \ / _ \ '__/ _ \
--   / ___ \ (_| | (_| | | | | |  __/ | |  __/
--  /_/   \_\__,_|\__,_| |_| |_|\___|_|  \___|


--- @param Important, add a webhook here, otherwise the images won't work.

--- @param Set your own discord Webhook here.
Config.Webhook = 'https://discord.com/api/webhooks/1121663983720595486/C25tsqomiACO8Z_5xDa5S0wGkqAA9S5KHb4E8_MPaMJ1cqV3wfUkaP5Jn-yfdiuJlGVK'

--- @param Set your own discord Webhook here.
Config.TwitterWebhook = 'https://discord.com/api/webhooks/1121663833828765786/lK72JAKh553RNEKeSMXDm5-nA-qKIGVgK8MwDD5kSfSn9Rbuj5l_VtB8r0VXIO8zmO1Z'

--- @param Set your own discord Webhook here.
Config.InstagramWebhook = 'https://discord.com/api/webhooks/1121664038221393980/m_4m6tlrcTGMKlUmWGwoXu221P5-3P_ejHw6YMRd6_P9XY4Zs0zofo33rIyshjtGS6bN'

--- @param Set your own discord Webhook here.
Config.YellowPagesWebhook = 'https://discord.com/api/webhooks/1121664115430137976/peXhamkLot1oy2qcfr-o2eA60YxGzL-MMM43_ukyOxwKb4zplD4V6D223-BDm-vco-2Q'

--- @param Set your own discord Webhook here.
Config.NewsWebhook = 'https://discord.com/api/webhooks/1121664176230776842/G-VvzNH0Xj9K8V1Ea4_0Sete7IxBh6T5oMadJDY3tok3tuBtVS-kNewPA7lOzFMfqwEU'

--- @param Set your own discord Webhook here.
Config.DarkWebBuy = 'https://discord.com/api/webhooks/1163595589028696074/c8maPNuUi5w03JIXFQanj57qJWJAQOv2kqUs_qnsYULtrR0IwXmjXbqCRqNoHI-Jh40X'

--- @param Set your own discord Webhook here.
-- You can modify on qs-smartphone/server/custom/misc/bank.lua
Config.BankWebhook = 'https://discord.com/api/webhooks/1163595665214017556/t8pZ-rmBqMGbWWl83izNwIGOszZscpc6sSV3-2uVvN9lq5lpeY853IgyF8xsoBKXfVXi'


--      _       _     _   _
--     / \   __| | __| | | |__   ___ _ __ ___
--    / _ \ / _` |/ _` | | '_ \ / _ \ '__/ _ \
--   / ___ \ (_| | (_| | | | | |  __/ | |  __/
--  /_/   \_\__,_|\__,_| |_| |_|\___|_|  \___|





-- Options
Config.PublicWebhookFooter = 'Quasar Smartphone Logs'
Config.WebhookImage = 'https://media.discordapp.net/attachments/926274292373655562/999502096430796950/xd.png?width=676&height=676'

Config.Webhooks = { -- Enable or disable webhooks.
    twitter = true,
    instagram = true,
    yellowpages = true,
    news = true,
}

Config.WebhooksTranslations = { -- All webhook translations.
    ['twitter'] = {
        name = 'Twitter',
        title = 'New Tweet!',
        username = '**Username**: @',
        description = '\n**Description**: ',
        image = 'https://media.discordapp.net/attachments/926274292373655562/999492805770608710/tweedle.png'
    },

    ['instagram'] = {
        name = 'Instagram',
        title = 'New Post!',
        username = '**Username**: @',
        description = '\n**Description**: ',
        image = 'https://media.discordapp.net/attachments/926274292373655562/999504825450500157/instagraph.png'
    },

    ['yellowpages'] = {
        name = 'Yellow Pages',
        title = 'New Post!',
        username = '**Username**: ',
        description = '\n**Description**: ',
        number = '\n**Number**: ',
        image = 'https://media.discordapp.net/attachments/926274292373655562/999508700907700234/yellow_pages.png'
    },

    ['news'] = {
        name = 'News',
        title = 'New Storie!',
        storie = '**Title**: ',
        description = '\n**Description**: ',
        date = '\n**Number**: ',
        image = 'https://media.discordapp.net/attachments/989917195972788234/1002266182994362379/news.png'
    },
}

function WebhookDarkWeb(player, item, data, exploit)
    local embed = {}
    local message

    if exploit then
        message = '@everyone'
        dataFinal = {
            Item = tostring(data.Item) or false,
            Label = tostring(data.Label) or false,
            isItem = tostring(data.isItem) or false,
            Price = tostring(data.Price) or false,
            Count = tostring(data.Count) or false,
        }
        embed = {
            ['color'] = 16711680,
            ['title'] = 'qs-smartphone DarkWeb EXPLOITED',
            ['description'] = '**ID:** `' .. player.source .. '` \n**Identifier:** `' .. player.identifier .. '` \n**Item:** `' .. item .. '`.',
            ['footer'] = {
                ['text'] = 'Data: \nItem : ' .. dataFinal.Item .. ' \nLabel : ' .. dataFinal.Label .. ' \nisItem? : ' .. dataFinal.isItem .. ' \nPrice : ' .. dataFinal.Price .. ' \nCount : ' .. dataFinal.Count .. ' \nEncoded Data : ' .. json.encode(data, { indent = true }) .. '.'
            }
        }
    else
        message = ''
        embed = {
            ['color'] = 65280,
            ['title'] = 'SMARTPHONE DarkWeb',
            ['description'] = '**ID:** `' .. player.source .. '` \n**Identifier:** `' .. player.identifier .. '` \n**Item:** `' .. item .. '` **amount:** `' .. data .. '`.',
        }
    end

    PerformHttpRequest(Config.DarkWebBuy, function(err, text, headers) end, 'POST', json.encode({ username = 'Smartphone', content = message, embeds = { embed } }), { ['Content-Type'] = 'application/json' })
end
