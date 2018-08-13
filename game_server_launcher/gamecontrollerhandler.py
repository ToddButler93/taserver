#!/usr/bin/env python3
#
# Copyright (C) 2018  Maurice van der Pot <griffon26@kfk4ever.com>
#
# This file is part of taserver
#
# taserver is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as
# published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.
#
# taserver is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with taserver.  If not, see <http://www.gnu.org/licenses/>.
#

import gevent.monkey
gevent.monkey.patch_socket()

from gevent.server import StreamServer

from common.tcpmessage import TcpMessageReader, TcpMessageWriter
from common.messages import parse_message


class GameControllerReader:
    def __init__(self, sock, incoming_queue):
        self.tcp_reader = TcpMessageReader(sock)
        self.incoming_queue = incoming_queue

    def run(self):
        while True:
            msg_bytes = self.tcp_reader.receive()
            self.incoming_queue.put(parse_message(msg_bytes))


class GameControllerWriter:
    def __init__(self, sock, outgoing_queue):
        self.tcp_writer = TcpMessageWriter(sock)
        self.outgoing_queue = outgoing_queue

    def run(self):
        while True:
            msg = self.outgoing_queue.get()
            self.tcp_writer.send(msg.to_bytes())


class GameControllerHandler:
    def __init__(self, config, incoming_queue, outgoing_queue):
        self.port = int(config['port'])
        self.incoming_queue = incoming_queue
        self.outgoing_queue = outgoing_queue

    def run(self):
        server = StreamServer(('127.0.0.1', self.port), self._handle, 1)
        server.serve_forever()

    def _handle(self, sock, address):
        reader = GameControllerReader(sock, self.incoming_queue)
        gevent.spawn(reader.run)

        writer = GameControllerWriter(sock, self.outgoing_queue)
        writer.run()


def handle_game_controller(game_controller_config, incoming_queue, outgoing_queue):
    game_controller_handler = GameControllerHandler(game_controller_config,
                                                    incoming_queue,
                                                    outgoing_queue)
    game_controller_handler.run()
