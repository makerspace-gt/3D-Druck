                   .:                     :,                                          
,:::::::: ::`      :::                   :::                                          
,:::::::: ::`      :::                   :::                                          
.,,:::,,, ::`.:,   ... .. .:,     .:. ..`... ..`   ..   .:,    .. ::  .::,     .:,`   
   ,::    :::::::  ::, :::::::  `:::::::.,:: :::  ::: .::::::  ::::: ::::::  .::::::  
   ,::    :::::::: ::, :::::::: ::::::::.,:: :::  ::: :::,:::, ::::: ::::::, :::::::: 
   ,::    :::  ::: ::, :::  :::`::.  :::.,::  ::,`::`:::   ::: :::  `::,`   :::   ::: 
   ,::    ::.  ::: ::, ::`  :::.::    ::.,::  :::::: ::::::::: ::`   :::::: ::::::::: 
   ,::    ::.  ::: ::, ::`  :::.::    ::.,::  .::::: ::::::::: ::`    ::::::::::::::: 
   ,::    ::.  ::: ::, ::`  ::: ::: `:::.,::   ::::  :::`  ,,, ::`  .::  :::.::.  ,,, 
   ,::    ::.  ::: ::, ::`  ::: ::::::::.,::   ::::   :::::::` ::`   ::::::: :::::::. 
   ,::    ::.  ::: ::, ::`  :::  :::::::`,::    ::.    :::::`  ::`   ::::::   :::::.  
                                ::,  ,::                               ``             
                                ::::::::                                              
                                 ::::::                                               
                                  `,,`


https://www.thingiverse.com/thing:2775946
Particulates Sensor Case by shred is licensed under the Creative Commons - Attribution - Non-Commercial - Share Alike license.
http://creativecommons.org/licenses/by-nc-sa/3.0/

# Summary

**Note:** The white box is a stock junction box. It's not printed.

----

This is a frame for a [luftdaten.info](http://luftdaten.info) compatible particulates sensor.

The original sensor is housed in drain pipes, which is cheap, but also looks quite like that. ;-)

This construction uses an OBO Bettermann T60 junction box, which looks nicer, and is also UV resistant and IP66 water protected. All components are mounted on the printed frame and fixed inside the junction box. Two wind pipes at the bottom of the box allow air flow. A printed tunnel guides the inlet air to the sensor, so there is no need for a hose. Grilles in the wind pipes keep insects from crawling into the box.

A DHT22 temperature and humidity sensor is required for this construction. It is placed at the wall of the inlet air tunnel, so it is protected from rain, but still exposed to the outside air. There is a space for an optional BMP180 air pressure sensor.

The OpenSCAD source code [is available at GitHub](https://github.com/shred/dustycase).

I also wrote [a small tool](https://geordi.shredzone.org) that collects the sensor data to a database, so it can be analyzed with tools like [Grafana](https://grafana.com/).

-----

[Bauanleitung auf Deutsch](https://shred.zone/cilla/page/401/wir-bauen-uns-einen-feinstaubsensor.html) (assembly instructions in German)

# Print Settings

Printer Brand: Ultimaker
Printer: Ultimaker 2
Supports: No
Infill: 30%

Notes: 
Use a material that allows to drive in screws without cracking. Since the printed parts are mounted inside the junction box, the filament does not need to be UV resistant or particularly weatherproof. I have used PLA.

No ambient light should fall into the chamber of the particulates sensor. For this reason I recommend to use a dark filament, at least for the top frame part.

Do not use supports, as they may be difficult to remove after printing.

# Post-Printing

- Remove both plug-in seals from one side of the junction box. This will be the bottom side later.
- Insert the USB cable through the _left_ hole.
- Put the base plate into the junction box and tighten it with 4x 3.5 x 12 mm screws. You can also use 3.0 x 12 mm screws if you don't have 3.5 mm screws at hand.
- Cut open the two plug-in seals at 19-20 mm diameter, and use them to seal the junction box again.
- Solder the sensors and sensor cables to the NodeMCU. Use shrinkable tubing for the pins of the DHT22 sensor. Check that the wiring is correct. Check again.
- You should install the sensor firmware and run a test now. It will be more difficult once the sensor is assembled.
- Fix the NodeMCU and the optional BMP180 sensor to their bolts, using 3.0 x 12 mm screws. Connect it to the USB cable.
- Insert the DHT22 sensor into its place (see photo). It does not need to be fixed.
- Place the upper plate in its position and tighten it with 2x 3.0 x 12 mm screws.
- Connect the SDS011 cable to the sensor. You may need to cut away a little bit of the connector's plastic to make it fit into the junction box.
- Put the SDS011 sensor to the top of the sandwich. Be careful when inserting the air inlet into the printed air tunnel. Tighten the sensor with 3x 3.0 x 12 mm screws.
- That's it. You can close the junction box now.

# Bill of Material

Besides the printed parts, you need:

- [OBO Bettermann T60](https://obo-bettermann.com/article/display/en-wo/junction-box-t-60-plug-in-seal.html) junction box with plug-in seals
- ILS-Nova PM Sensor SDS011
- Lolin NodeMCU (make sure it's Lolin, other brands may not fit)
- DHT 22 (temperature and humidity sensor)
- 11 screws 3.0 x 12 mm
- 4 screws 3.5 x 12 mm (if available, or four more 3.0 x 12mm)
- Some ribbon cable
- Some shrinkable tubing
- USB cable with flat wire
- USB power supply (a disused old USB charger will do, the sensor consumes less than 200 mA)

Optionally:

- BMP180 (temperature and air pressure sensor)