ptboat say3D ["timebomb", 50]; //play tick tock
sleep 40;
ptboat say3D ["timebomb", 50]; //play tick tock
sleep 40;
ptboat say3D ["timebomb", 50]; //play tick tock

bombTimerStart = time;
waituntil { sleep 1; (time - bombTimerStart) >= (60*45) };
// Kaboom!
hint "Kaboom";
"M_Mo_82mm_AT_LG" createVehicle (getPos ptboat);