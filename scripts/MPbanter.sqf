// Define the array with your audio tracks
_MP1Tracks = [
    ["MP1_1", 75],  // First track and its volume
    ["MP1_2", 75],
	["MP1_3", 75]// Second track and its volume
];

// Randomly select an audio track from the array
_selectedTrack = selectRandom _MP1Tracks;

// Play the selected audio track
MP1 setRandomLip true;
MP1 say3D [_selectedTrack select 0, _selectedTrack select 1];
MP1 setRandomLip false;


sleep 5; // lets track finsish playing

// Define the array with your audio tracks
_MP2Tracks = [
    ["MP2_1", 100],  // First track and its volume
    ["MP2_2", 100],
	["MP2_3", 100]// Second track and its volume
];

// Randomly select an audio track from the array
_selectedTrack = selectRandom _MP2Tracks;

// Play the selected audio track
MP2 setRandomLip true;
MP2 say3D [_selectedTrack select 0, _selectedTrack select 1];
MP2 setRandomLip false;




/*
MP1 say3D ["MP1_1", 75];
sleep 5
MP2 say3D ["MP2_1", 100];

MP1 say3D ["MP1_2", 75];
sleep 5
MP2 say3D ["MP2_2", 100];
*/


