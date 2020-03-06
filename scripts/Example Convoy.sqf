//Convoy Scripting
//Assuming convoy vehicles follow this labelling: vic1, vic2, vic3, etc.
//Vehicles should be grouped ideally.


//Repeat for each vehicle in the convoy
vic1 setConvoySeparation 20;
vic1 forceFollowRoad true;
vic1 limitSpeed 5; //set your speed based on what is required. 5 is roughly walking pace.
vic1 setDriveOnPath [getMarkerPos "wp1", getMarkerPos "wp2", getMarkerPos "wp3"];//Using wp1, wp2, and wp3 as marker waypoints

vic2 setConvoySeparation 20;
vic2 forceFollowRoad true;
vic2 limitSpeed 5;
vic2 setDriveOnPath [getMarkerPos "wp1", getMarkerPos "wp2", getMarkerPos "wp3"];

vic3 setConvoySeparation 20;
vic3 forceFollowRoad true;
vic3 limitSpeed 5;
vic3 setDriveOnPath [getMarkerPos "wp1", getMarkerPos "wp2", getMarkerPos "wp3"];

// By Konigstiger