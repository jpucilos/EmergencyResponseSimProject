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
    parameters:
        int c1;
        int c2;
        
    @display("bgb=1495.7037,957.2504");
    submodules:
        NYC_calls: Source {
            @display("p=149.57037,152.89417");
        }
        Hospital: Sink {
            @display("p=1216.5057,697.9951");
        }
        responder_array[c1]: Server {
            @display("p=511.86307,717.9378");
        }

        ambulance_queue: PassiveQueue {
            @display("p=864.1844,452.0349");
        }

        call_queue: PassiveQueue {
            @display("p=149.57037,452.0349");
        }
        ambulance_array[c2]: Server {
            @display("p=1216.5057,202.75096");
        }
    connections:
        NYC_calls.out --> call_queue.in++;

        for i=0..(c1-1) {
            call_queue.out++ --> responder_array[i].in++;
            responder_array[i].out --> ambulance_queue.in++;
        }
        for i=0..(c2-1) {
            ambulance_queue.out++ --> ambulance_array[i].in++;
            ambulance_array[i].out --> Hospital.in++;
        }
}
