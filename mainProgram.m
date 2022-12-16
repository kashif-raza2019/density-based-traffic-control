 %
%   E&TC A 7th Semester 
%   Density Based Traffic Control using Image Processing
%   MD KASHIF RAZA  - 19T7037
%   MILISHA GUPTA   -  19T7038
%   SAKSHI MAGRE    -  19T7054
%   KIRANJEET KAUR  - 19T7081


% Clear the existing workspace
   clear();
   % COM 9 is the port number for this Arduino Uno development board
   a = arduino('COM9', 'Uno');
   % Traffic Signal 1
   R1='D13';
   G1='D11';
   Y1='D12';
   % Traffic Signal 2
   R2='D10';
   G2='D8';
   Y2='D9';
   % Traffic Signal 3
   R3='D7';
   G3='D5';
   Y3='D6';
   % Traffic Signal 4
   R4='D4';
   G4='D2';
   Y4='D3';

   % Threshold Count
   Th=2;

   % Minimum Delay for Lane Switching in seconds
   minLaneSwitchDelay = 2;


   % Video and image Captured from data sample
   %Tracking_Cars('Vehicle Detection Video/Data/Sample2.mp4');
    
   imageCases = ['square.jpg', 'squarewithcars.png'];


   % Message box for sending a system notification
   msgbox("The density based traffic control system is started and Image Extraction is going on after which the proceesing is going on", "Project Started", "Success");

   for i=1:100
       % Case for 4 square lane
       Green1(a,R1,G1,Y1);
       Red2(a,R2,G2,Y2);
       Red3(a,R3,G3,Y3);
       Red4(a,R4,G4,Y4);
       pause(minLaneSwitchDelay);
       [c1,c2,c3,c4]=CountCar(imageCases, 1);
       eLights(c1,c2,c3,c4,Th,a,R1,Y1,G1,R2,G2,Y2,R3,G3,Y3,G4,Y4,R4)
       % Lane Switching 
       Yellow1(a,R1,G1,Y1);
       Red2(a,R2,G2,Y2);
       Red3(a,R3,G3,Y3);
       Red4(a,R4,G4,Y4);
       pause(3);
       Red1(a,R1,G1,Y1);
       Green2(a,R2,G2,Y2)
       Red3(a,R3,G3,Y3);
       Red4(a,R4,G4,Y4);
       pause(5);
       [c1,c2,c3,c4]=CountCar(imageCases, 1);
       eLights(c1,c2,c3,c4,Th,a,R1,Y1,G1,R2,G2,Y2,R3,G3,Y3,G4,Y4,R4)
       % Lane Switching 
       Red1(a,R1,G1,Y1);
       Yellow2(a,R2,G2,Y2)
       Red3(a,R3,G3,Y3)
       Red4(a,R4,G4,Y4)
       pause(minLaneSwitchDelay)
       Red1(a,R1,G1,Y1);
       Red2(a,R2,G2,Y2)
       Green3(a,R3,G3,Y3)
       Red4(a,R4,G4,Y4)
       pause(minLaneSwitchDelay)
       [c1,c2,c3,c4]=CountCar(imageCases, 1);
       eLights(c1,c2,c3,c4,Th,a,R1,Y1,G1,R2,G2,Y2,R3,G3,Y3,G4,Y4,R4)
       % Lane Switching 
       Red1(a,R1,G1,Y1);
       Red2(a,R2,G2,Y2)
       Yellow3(a,R3,G3,Y3)
       Red4(a,R4,G4,Y4)
       pause(minLaneSwitchDelay)
       Red1(a,R1,G1,Y1);
       Red2(a,R2,G2,Y2)
       Red3(a,R3,G3,Y3)
       Green4(a,R4,G4,Y4)
       pause(minLaneSwitchDelay)
       [c1,c2,c3,c4]=CountCar(imageCases, 1);
       eLights(c1,c2,c3,c4,Th,a,R1,Y1,G1,R2,G2,Y2,R3,G3,Y3,G4,Y4,R4)
       % Lane Switching 
       Red1(a,R1,G1,Y1);
       Red2(a,R2,G2,Y2)
       Red3(a,R3,G3,Y3)
       Yellow4(a,R4,G4,Y4)
       pause(minLaneSwitchDelay);

   
   
   end
   