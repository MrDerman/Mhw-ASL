state("MonsterHunterWorld") {
    bool loadingCheck : "MonsterHunterWorld.exe", 0x1D0, 0x18, 0x8, 0x10, 0x50, 0x10, 0x7C;
}

startup {}

split {}

start {}

reset {}

isLoading {
   return !current.loadingCheck;
}

init {}
