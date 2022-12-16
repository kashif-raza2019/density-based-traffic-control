a = arduino();
clear a;
   a = arduino('COM9', 'Uno');
   while true;
       writeDigitalPin(a, 'D13', 1);
       writeDigitalPin(a, 'D12', 0);
       writeDigitalPin(a, 'D11', 0);
       pause(5);
       writeDigitalPin(a, 'D13', 0);
       writeDigitalPin(a, 'D12', 1);
       writeDigitalPin(a, 'D11', 0);
       pause(2);
       writeDigitalPin(a, 'D13', 0);
       writeDigitalPin(a, 'D12', 0);
       writeDigitalPin(a, 'D11', 1);
       pause(5);
    end