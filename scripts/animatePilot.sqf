// File: scripts/animatePilot.sqf

// Parameters
params ["_object"];

// Animation settings
private _animation = "Acts_PercMstpSlowWrflDnon_handup2"; // Animation name
private _animationSpeed = 1; // Speed of the animation
private _interval = 10; // Interval in seconds between animations

// Initialize the variable to control the animation loop
private _stopAnimation = false;

while {true} do {
    // Exit the loop if the stop condition is met
    if (_stopAnimation) exitWith {};
    
    // Play the animation
    _object playMove _animation;
    
    // Wait for the duration of the animation plus some additional time before restarting
    sleep _interval;
    
    // Optionally, add a short pause before the next animation cycle
    sleep 2;
};

// Additional cleanup or actions if needed

