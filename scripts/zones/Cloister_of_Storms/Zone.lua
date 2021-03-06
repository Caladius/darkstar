-----------------------------------
--
-- Zone: Cloister_of_Storms (202)
--
-----------------------------------
package.loaded["scripts/zones/Cloister_of_Storms/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/zones/Cloister_of_Storms/TextIDs");
-----------------------------------

function onInitialize(zone)
end;

function onZoneIn(player,prevZone)
    local cs = -1;
    if (player:getXPos() == 0 and player:getYPos() == 0 and player:getZPos() == 0) then
        player:setPos(517.957,-18.013,540.045,0);
    end
    return cs;
end;

function onConquestUpdate(zone, updatetype)
    dsp.conq.onConquestUpdate(zone, updatetype)
end;

function onRegionEnter(player,region)
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;
