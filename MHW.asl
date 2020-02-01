state("MonsterHunterWorld") {
    int loadingCheck : "MonsterHunterWorld.exe", 0x03C02D30, 0x78, 0x20, 0x20, 0x78, 0x30, 0x80, 0x144;
}

startup {}

split {}

start {}

reset {}

isLoading {
    //loadingCheck is 0 when a loading screen active
    if(current.loadingCheck == 0){
        return true;
    }
    return false;
}

init {}
