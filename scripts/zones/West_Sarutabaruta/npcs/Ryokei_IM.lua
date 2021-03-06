-----------------------------------
-- Area: West Sarutabaruta
--  NPC: Ryokei, I.M.
-- Type: Outpost Conquest Guards
-- !pos -11.322 -13.459 317.696 115
-----------------------------------
package.loaded["scripts/zones/West_Sarutabaruta/TextIDs"] = nil
-----------------------------------
require("scripts/zones/West_Sarutabaruta/TextIDs")
require("scripts/globals/conquest")
-----------------------------------

local guardNation = dsp.nation.BASTOK
local guardType   = dsp.conq.guard.OUTPOST
local guardRegion = dsp.region.SARUTABARUTA
local guardEvent  = 32761

function onTrade(player,npc,trade)
    dsp.conq.overseerOnTrade(player, npc, trade, guardNation, guardType)
end

function onTrigger(player,npc)
    dsp.conq.overseerOnTrigger(player, npc, guardNation, guardType, guardEvent, guardRegion)
end

function onEventUpdate(player,csid,option)
    dsp.conq.overseerOnEventUpdate(player, csid, option, guardNation)
end

function onEventFinish(player,csid,option)
    dsp.conq.overseerOnEventFinish(player, csid, option, guardNation, guardType, guardRegion)
end