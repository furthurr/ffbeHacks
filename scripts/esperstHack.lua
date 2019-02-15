gg.toast('FFEXVIUS')
--var globals
stats = {''}
characters = {'Hack all spers'}
hackValue = 10000000
logHack = ''
--ESPERS:
-- -----------------------------------------------
table.insert(characters, 'Ifrit 3🌟 lvl60')
table.insert(stats, '7000;4500;7480;5060;3880;3880')
-- --------------------------------------------
-- --------------------------------------------
table.insert(characters, 'Siren 3🌟 lvl60')
table.insert(stats, '5400;6240;4200;4680;6120;6120')
-- --------------------------------------------
-- --------------------------------------------
table.insert(characters, 'Golem 3🌟 lvl51')
table.insert(stats, '7530;5775;4828;6938;2822;2822')
-- -----------------------------------------------
-- -----------------------------------------------
table.insert(characters, 'Shiva 3🌟 lvl55')
table.insert(stats, '5625;7400;3830;4305;6910;6910')
-- -----------------------------------------------
-- -----------------------------------------------
table.insert(characters, 'Ramuh(Lamú) 3🌟 lvl53')
table.insert(stats, '4354;7825;3390;2731;7472;6272')
-- -----------------------------------------------
-- -----------------------------------------------
table.insert(characters, 'Diabolos(Diablo) 3🌟 lvl47')
table.insert(stats, '6316;7281;2587;3998;6246;4152')
-- -----------------------------------------------
-- -----------------------------------------------
table.insert(characters, 'Carbuncle(Rubi) 3🌟 lvl52')
table.insert(stats, '5056;7040;2472;5792;5176;7552')
-- -----------------------------------------------
-- -----------------------------------------------
table.insert(characters, 'Odin 3🌟 lvl 1')
table.insert(stats, '5300;4000;6300;4300;2100;2300')
-- -----------------------------------------------
-- -----------------------------------------------
table.insert(characters, 'Titan 2🌟 lvl1')
table.insert(stats, '4400;1700;4100;2800;1600;2800')
-- -----------------------------------------------
-- -----------------------------------------------
table.insert(characters, 'Lakshmi 3🌟 lvl1')
table.insert(stats, '5100;5300;2200;2500;3500;5900')
-- -------------------------------------------------
-- -------------------------------------------------
table.insert(characters, 'Tetra Sylphid 2🌟 lvl1')
table.insert(stats, '3000;4200;2200;1700;4600;2700')
-- -------------------------------------------------
-- -------------------------------------------------
table.insert(characters, 'Bahamut 1🌟 lvl30')
table.insert(stats, '6400;6300;6000;6000;6000;6000')
-- -------------------------------------------------
-- -------------------------------------------------
table.insert(characters, 'Fenril 2🌟 lvl1')
table.insert(stats, '3800;2500;4400;2100;4400;2100')
-- -------------------------------------------------
-- -------------------------------------------------
table.insert(characters, 'Leviathan 2🌟 lvl1')
table.insert(stats, '5000;4000;3700;2200;4100;2200')
---functions
function hackCharacter(menu)
  gg.searchNumber(stats[menu], gg.TYPE_DWORD)
  local cont = gg.getResultCount ()
  local numHacked = 0
  local msg = ''
  if(cont>5)then
    gg.getResults(cont)
    local results = gg.getResults(cont)
    local thisStats = split(stats[menu], ";")
    for i=1,cont do
      if (((i+5)<=cont) and (results[i].value == thisStats[1]) and (results[i+1].value == thisStats[2]) and (results[i+2].value == thisStats[3]) and (results[i+3].value == thisStats[4]) and (results[i+4].value == thisStats[5]) and (results[i+5].value == thisStats[6])) then
        results[i].value = hackValue
        results[i+1].value = hackValue
        results[i+2].value = hackValue
        results[i+3].value = hackValue
        results[i+4].value = hackValue
        results[i+5].value = hackValue
        numHacked = numHacked+1
      end
    end
    gg.setValues(results)
    msg = ""..characters[menu].." Modified 👍"
  else
    msg = ""..characters[menu].." Error ⛔ check stats"
  end
  print(msg)
  logHack = logHack.."\n"..msg
  gg.clearResults()
end
function todos()
  for Index, Value in pairs( characters ) do
    if (Index >1) then
      hackCharacter(Index);
    end
  end
end
function split(s, delimiter)
    result = {};
    for match in (s..delimiter):gmatch("(.-)"..delimiter) do
        table.insert(result, match);
    end
    return result;
end
print('Script 1.0.1 by furthurr')
if gg.isVisible(true) then
   gg.setVisible(false)
   end
gg.clearResults()
goto START
::START::
count = 0
for _ in pairs(characters) do count = count + 1 end
if (count>2) then
    menu = gg.choice(characters,nil)
    if menu == nil then goto noselect end
    if menu == 1 then todos() goto sdone end
    if menu > 1 then hackCharacter(menu) goto sdone  end
  goto noselect
else
  hackCharacter(2)
end
::sdone::
print('script only for testing..')
gg.toast(logHack..'\nDesarrollado por ..::@furthurr::..')
os.exit()
::noselect::
print('Sin selección')
goto sdone
