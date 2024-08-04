ptboat say3D ["timebomb", 50]; //play tick tock
sleep 40;
ptboat say3D ["timebomb", 50]; //play tick tock
sleep 40;
ptboat say3D ["timebomb", 50]; //play tick tock
sleep 40;

bombTimerStart = time;
waituntil { sleep 1; (time - bombTimerStart) >= (60*28) };

"M_Mo_82mm_AT_LG" createVehicle (getPos ptboat);