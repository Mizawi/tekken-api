CHARACTER_JSON_BASE_URL = 'https://raw.githubusercontent.com/dayhaysoos/t7-chicken-plus/master/assets/character-data/'
CHARACTER_NAMES = ['akuma', 'alisa', 'anna', 'armorking', 'asuka', 'bob', 'bryan', 'claudio', 'deviljin', 'dragunov', 'eddy', 'eliza',
                    'feng', 'geese', 'gigas', 'heihachi', 'hwoarang', 'jack', 'jin', 'josie', 'julia', 'katarina', 'kazumi', 'kazuya',
                    'king', 'kuma', 'lars', 'law', 'lei', 'leo', 'lili', 'luckychloe', 'marduk', 'masterraven', 'miguel', 'negan', 'nina', 'noctis',
                    'panda', 'paul', 'shaheen', 'steve', 'xiaoyu', 'yoshimitsu', 'zafina']

CHARACTER_NAMES.each do |name|
    Character.create!(JSON.load(open(CHARACTER_JSON_BASE_URL + name + '.json')))
end