//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

import org.omnetpp.queueing.PassiveQueue;
import org.omnetpp.queueing.Queue;
import org.omnetpp.queueing.Server;
import org.omnetpp.queueing.Sink;
import org.omnetpp.queueing.Source;


network EmergencyResponse
{
    @display("bgb=2226.9368,1980.9766");
    submodules:
        NYC_calls: Source {
            @display("p=94,67");
        }
        Hospital: Sink {
            @display("p=2080.6902,847.5655");
        }
        responder1: Server {
            @display("p=425.4446,172.83688");
        }
        responder2: Server {
            @display("p=269.22668,352.32132");
        }
        responder3: Server {
            @display("p=93.06601,481.94897");
        }
        ambulance_queue: PassiveQueue {
            @display("p=342.34998,850.8892");
        }
        ambulance1: Server {
            @display("p=924.0126,132.95145;is=vs");
        }
        call_queue: PassiveQueue {
            @display("p=93.06601,252.60774");
        }
        ambulance2: Server {
            @display("p=1063.6116,132.95145;is=vs");
        }
        ambulance3: Server {
            @display("p=1213.1819,132.95145;is=vs");
        }
        ambulance4: Server {
            @display("p=924.0126,212.7223;is=vs");
        }
        ambulance5: Server {
            @display("p=1063.6116,212.7223;is=vs");
        }
        ambulance6: Server {
            @display("p=1209.8582,212.7223;is=vs");
        }
        ambulance7: Server {
            @display("p=924.0126,342.34998;is=vs");
        }
        ambulance8: Server {
            @display("p=1063.6116,342.34998;is=vs");
        }
        ambulance9: Server {
            @display("p=1209.8582,342.34998;is=vs");
        }
        ambulance10: Server {
            @display("p=924.0126,418.79706;is=vs");
        }
        ambulance11: Server {
            @display("p=1063.6116,418.79706;is=vs");
        }
        ambulance12: Server {
            @display("p=1209.8582,418.79706;is=vs");
        }
        ambulance13: Server {
            @display("p=924.0126,571.6912;is=vs");
        }
        ambulance14: Server {
            @display("p=1063.6116,571.6912;is=vs");
        }
        ambulance15: Server {
            @display("p=1209.8582,571.6912;is=vs");
        }
        ambulance16: Server {
            @display("p=924.0126,648.1383;is=vs");
        }
        ambulance17: Server {
            @display("p=1063.6116,648.1383;is=vs");
        }
        ambulance18: Server {
            @display("p=1209.8582,648.1383;is=vs");
        }
        ambulance19: Server {
            @display("p=924.0126,771.1184;is=vs");
        }
        ambulance20: Server {
            @display("p=1063.6116,771.1184;is=vs");
        }
        ambulance21: Server {
            @display("p=1209.8582,771.1184;is=vs");
        }
        ambulance22: Server {
            @display("p=924.0126,847.5655;is=vs");
        }
        ambulance23: Server {
            @display("p=1063.6116,847.5655;is=vs");
        }
        ambulance24: Server {
            @display("p=1209.8582,847.5655;is=vs");
        }
        ambulance25: Server {
            @display("p=924.0126,980.5169;is=vs");
        }
        ambulance26: Server {
            @display("p=1063.6116,980.5169;is=vs");
        }
        ambulance27: Server {
            @display("p=1209.8582,980.5169;is=vs");
        }
        ambulance28: Server {
            @display("p=924.0126,1056.964;is=vs");
        }
        ambulance29: Server {
            @display("p=1063.6116,1056.964;is=vs");
        }
        ambulance30: Server {
            @display("p=1209.8582,1056.964;is=vs");
        }
        ambulance31: Server {
            @display("p=924.0126,1169.9728;is=vs");
        }
        ambulance32: Server {
            @display("p=1063.6116,1169.9728;is=vs");
        }
        ambulance33: Server {
            @display("p=1209.8582,1169.9728;is=vs");
        }
        ambulance34: Server {
            @display("p=924.0126,1246.4198;is=vs");
        }
        ambulance35: Server {
            @display("p=1063.6116,1246.4198;is=vs");
        }
        ambulance36: Server {
            @display("p=1209.8582,1246.4198;is=vs");
        }
        ambulance37: Server {
            @display("p=924.0126,1359.4285;is=vs");
        }
        ambulance38: Server {
            @display("p=1063.6116,1359.4285;is=vs");
        }
        ambulance39: Server {
            @display("p=1209.8582,1359.4285;is=vs");
        }
        ambulance40: Server {
            @display("p=924.0126,1435.8756;is=vs");
        }
        ambulance41: Server {
            @display("p=1063.6116,1435.8756;is=vs");
        }
        ambulance42: Server {
            @display("p=1209.8582,1435.8756;is=vs");
        }
        ambulance43: Server {
            @display("p=924.0126,1568.827;is=vs");
        }
        ambulance44: Server {
            @display("p=1063.6116,1568.827;is=vs");
        }
        ambulance45: Server {
            @display("p=1209.8582,1568.827;is=vs");
        }
        ambulance46: Server {
            @display("p=924.0126,1645.2742;is=vs");
        }
        ambulance47: Server {
            @display("p=1063.6116,1645.2742;is=vs");
        }
        ambulance48: Server {
            @display("p=1209.8582,1645.2742;is=vs");
        }
        ambulance49: Server {
            @display("p=924.0126,1758.2828;is=vs");
        }
        ambulance50: Server {
            @display("p=1063.6116,1758.2828;is=vs");
        }
        ambulance51: Server {
            @display("p=1209.8582,1758.2828;is=vs");
        }
        ambulance52: Server {
            @display("p=924.0126,1834.73;is=vs");
        }
        ambulance53: Server {
            @display("p=1063.6116,1834.73;is=vs");
        }
        ambulance54: Server {
            @display("p=1209.8582,1834.73;is=vs");
        }
    connections:
        NYC_calls.out --> call_queue.in++;
        call_queue.out++ --> responder1.in++;
        call_queue.out++ --> responder2.in++;
        call_queue.out++ --> responder3.in++;
        responder3.out --> ambulance_queue.in++;
        responder2.out --> ambulance_queue.in++;
        responder1.out --> ambulance_queue.in++;
        ambulance_queue.out++ --> ambulance1.in++;
        ambulance1.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance2.in++;
        ambulance2.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance3.in++;
        ambulance3.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance4.in++;
        ambulance4.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance5.in++;
        ambulance5.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance6.in++;
        ambulance6.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance7.in++;
        ambulance7.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance8.in++;
        ambulance8.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance9.in++;
        ambulance9.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance10.in++;
        ambulance10.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance11.in++;
        ambulance11.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance12.in++;
        ambulance12.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance13.in++;
        ambulance13.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance14.in++;
        ambulance14.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance15.in++;
        ambulance15.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance16.in++;
        ambulance16.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance17.in++;
        ambulance17.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance18.in++;
        ambulance18.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance19.in++;
        ambulance19.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance20.in++;
        ambulance20.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance21.in++;
        ambulance21.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance22.in++;
        ambulance_queue.out++ --> ambulance23.in++;
        ambulance22.out --> Hospital.in++;
        ambulance23.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance24.in++;
        ambulance24.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance25.in++;
        ambulance25.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance26.in++;
        ambulance26.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance27.in++;
        ambulance27.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance28.in++;
        ambulance28.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance29.in++;
        ambulance29.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance30.in++;
        ambulance30.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance31.in++;
        ambulance31.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance32.in++;
        ambulance32.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance33.in++;
        ambulance33.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance34.in++;
        ambulance34.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance35.in++;
        ambulance35.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance36.in++;
        ambulance36.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance37.in++;
        ambulance37.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance38.in++;
        ambulance38.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance39.in++;
        ambulance39.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance40.in++;
        ambulance40.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance41.in++;
        ambulance41.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance42.in++;
        ambulance42.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance43.in++;
        ambulance43.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance44.in++;
        ambulance44.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance45.in++;
        ambulance45.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance46.in++;
        ambulance46.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance47.in++;
        ambulance47.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance48.in++;
        ambulance48.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance49.in++;
        ambulance49.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance50.in++;
        ambulance50.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance51.in++;
        ambulance51.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance52.in++;
        ambulance52.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance53.in++;
        ambulance53.out --> Hospital.in++;
        ambulance_queue.out++ --> ambulance54.in++;
        ambulance54.out --> Hospital.in++;
}
