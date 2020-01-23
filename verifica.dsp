// la sintesi sottrattiva è una tecnica di sintesi sonora che filtra una sorgente sonora che può contenere varie armoniche, 
// vine utilizzata sottraendo o modificando bande di frequenza per ottenere un determinato range di frequenze.

import("stdfaust.lib");

pippo = vslider ("cut-off [style:knob]" , 500, 100, 20000, 10);

process = fi.lowpass(2,pippo) : fi.highpass(2,pippo);
