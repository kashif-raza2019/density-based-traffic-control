function eLights(c1,c2,c3,c4,Th,a,R1,Y1,G1,R2,G2,Y2,R3,G3,Y3,G4,Y4,R4)

avgCountLane1 = c1 / (c1 + c2 + c3 + c4);
avgCountLane2 = c2 / (c1 + c2 + c3 + c4);
avgCountLane3 = c3 / (c1 + c2 + c3 + c4);
avgCountLane4 = c4 / (c1 + c2 + c3 + c4);

if(c1>Th)
    % Lane 1 conditions
   avgCountPercentage = avgCountLane1 * 100;
   if(avgCountPercentage > 60)
       msgbox("Heavy Traffic Detected", "Lane 1 Traffic Status", "error");
   else
       msgbox("Light - Moderate Traffic Detected", "Lane 1 Traffic Status", "warn");
   end
   Green1(a,R1,G1,Y1);
   Red2(a,R2,G2,Y2)
   Red3(a,R3,G3,Y3)
   Red4(a,R4,G4,Y4)
   pause(avgCountLane1*20)

end
if(c2>Th)
    % Lane 2 conditions
   avgCountPercentage = avgCountLane2 * 100;
   if(avgCountPercentage > 60)
       msgbox("Heavy Traffic Detected", "Lane 2 Traffic Status", "error");
   else
       msgbox("Light - Moderate Traffic Detected", "Lane 2 Traffic Status", "warn");
   end
   Red1(a,R1,G1,Y1);
   Green2(a,R2,G2,Y2)
   Red3(a,R3,G3,Y3)
   Red4(a,R4,G4,Y4)
   pause(avgCountLane2*20)

end
if (c3>Th)
    % Lane 3 conditions
   avgCountPercentage = avgCountLane1 * 100;
   if(avgCountPercentage > 60)
       msgbox("Heavy Traffic Detected", "Lane 3 Traffic Status", "error");
   else
       msgbox("Light - Moderate Traffic Detected", "Lane 3 Traffic Status", "warn");
   end
   Red1(a,R1,G1,Y1);
   Red2(a,R2,G2,Y2)
   Green3(a,R3,G3,Y3)
   Red4(a,R4,G4,Y4)
   pause(avgCountLane3*20)

end
if (c4>Th)
    % Lane 4 conditions
   avgCountPercentage = avgCountLane1 * 100;
   if(avgCountPercentage > 60)
       msgbox("Light - Moderate Traffic Detected", "Lane 3 Traffic Status", "error");
   else
       msgbox("Heavy Traffic Detected", "Lane 4 Traffic Status", "error");
   end
   Red1(a,R1,G1,Y1);
   Red2(a,R2,G2,Y2)
   Red3(a,R3,G3,Y3)
   Green4(a,R4,G4,Y4)
   pause(avgCountLane4*20)
end




end

