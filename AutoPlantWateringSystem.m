reallyDryValue = 3.5;
moistureThreshold = 3.0;
saturatedValue = 1.0;

while true
    soilMoisture = readVoltage(a, 'A1');
    if soilMoisture > reallyDryValue
        writeDigitalPin(a, 'D2', 1);
        disp('Soil is really dry! Pump is ON.');
        pause(5.0);
        writeDigitalPin(a, 'D2', 0);
        disp('Pump is OFF.');
    elseif soilMoisture > moistureThreshold
        writeDigitalPin(a, 'D2', 1);
        disp('Soil is moist but needs more water. Pump is ON.');
        pause(5.0);
        
        
        writeDigitalPin(a, 'D2', 0);
        disp('Pump is OFF.');
    elseif soilMoisture > saturatedValue
        writeDigitalPin(a, 'D2', 0);
        disp('Soil is wet enough. Pump is OFF.');
    else
        writeDigitalPin(a, 'D2', 0);
        disp('Soil is very wet or sensor reading is too low. Pump is OFF.');
    end
    
    plot(datetime('now'), soilMoisture, 'r.-');
    hold on;
    xlabel('Time');
    ylabel('Soil Moisture (V)');
    title('Real-time Soil Moisture Level');
    drawnow;
    
    pause(10);
end