state("MonsterHunterWorld") {
    int loadingCheck : "MonsterHunterWorld.exe", 0x1D0, 0x18, 0x8, 0x10, 0x50, 0x10, 0x7C;
}

startup {}

split {}

start {}

reset {}

isLoading {
    //loadingCheck is 1 when a loading screen active
    if(current.loadingCheck == 1){
        return true;
    }
    return false;
}

init {}
