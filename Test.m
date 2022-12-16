%test
a.clear()
%My Dancing Lights :))
a = arduino('COM9', 'Uno');
ports = ["D2", 'D3', 'D4', 'D5', 'D6', 'D7', 'D8', 'D9', 'D10', 'D11', 'D12', 'D13'];
for n = 1 : 10
    for i = 1 : 12
        port = ports(i);
        disp(port);
        writeDigitalPin(a, port, 0);
        pause(1/200)
        writeDigitalPin(a, port, 1);
        pause(1/200);
        writeDigitalPin(a, port, 0);
    end
end

