# AutoPlantWateringSystem



\# Auto Plant Watering System



This project is an automated plant watering system built using Arduino and MATLAB. The system monitors soil moisture in real time and controls a water pump to maintain an appropriate moisture level without manual watering.



\## System Overview



The system uses a soil moisture sensor connected to the Arduino to continuously measure the condition of the soil. The readings are processed in MATLAB, where logic is applied to determine whether watering is required.



A water pump is connected through a digital pin and is activated only when the soil becomes too dry. The system also generates a live graph to show how soil moisture changes over time.



\## System Behavior



The system operates based on voltage readings from the soil moisture sensor.



When the soil is very dry, the pump is activated for a longer duration to restore moisture.  

When the soil is moderately dry, the pump runs for a shorter time.  

When the soil has enough moisture, the pump remains off.  



This ensures the plant receives water only when necessary and prevents overwatering.



\## Core Functionality



Continuous soil moisture monitoring  

Threshold based decision making  

Automatic pump activation and deactivation  

Real time visualization of moisture levels  



\## Components



Arduino Uno  

Soil moisture sensor  

Water pump powered by a 9V battery  

MATLAB for control and visualization  



\## Notes



The system is designed to run continuously and respond to changing soil conditions. The real time graph helps observe how the system reacts when the pump is activated and how moisture levels recover after watering.



\## Author



Gabriel Teklemariam

