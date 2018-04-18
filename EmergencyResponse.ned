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
    @display("bgb=927,394");
    submodules:
        NYC_calls: Source {
            @display("p=94,67");
        }
        Hospital: Sink {
            @display("p=816,165");
        }
        responder1: Server {
            @display("p=250,39");
        }
        responder2: Server {
            @display("p=250,126");
        }
        responder3: Server {
            @display("p=250,214");
        }
        ambulance_queue: PassiveQueue {
            @display("p=414,165");
        }
        ambulance1: Server {
            @display("p=627,39");
        }
        ambulance2: Server {
            @display("p=627,126");
        }
        ambulance3: Server {
            @display("p=627,214");
        }
        ambulance4: Server {
            @display("p=627,302");
        }
        call_queue: PassiveQueue {
            @display("p=104,175");
        }
    connections:
        NYC_calls.out --> call_queue.in++;
        call_queue.out++ --> responder1.in++;
        call_queue.out++ --> responder2.in++;
        call_queue.out++ --> responder3.in++;
        responder3.out --> ambulance_queue.in++;
        responder2.out --> ambulance_queue.in++;
        responder1.out --> ambulance_queue.in++;
        ambulance_queue.out++ --> ambulance4.in++;
        ambulance_queue.out++ --> ambulance3.in++;
        ambulance_queue.out++ --> ambulance2.in++;
        ambulance_queue.out++ --> ambulance1.in++;
        ambulance1.out --> Hospital.in++;
        ambulance2.out --> Hospital.in++;
        ambulance3.out --> Hospital.in++;
        ambulance4.out --> Hospital.in++;
}
