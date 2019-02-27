import grpc
from concurrent import futures
import time
import math

# import the generated classes
import rpc.modules.calculator.calculator_pb2_grpc as calculator_pb2_grpc
import rpc.modules.calculator.calculator_pb2 as calculator_pb2


"""[TODO: Move this section to seperate each modules]
[Description: Class Handler for all proto interface]
"""


class CalculatorServicer(calculator_pb2_grpc.CalculatorServicer):
    def SquareRoot(self, request, context):
        response = calculator_pb2.Number()
        response.value = math.sqrt(request.value)
        return response


"""[TODO: Move this section to global rpc server]
"""


def bootstrap_server():
    server = grpc.server(futures.ThreadPoolExecutor(max_workers=10))

    # use the generated function `add_CalculatorServicer_to_server`
    # to add the defined class to the server
    calculator_pb2_grpc.add_CalculatorServicer_to_server(
        CalculatorServicer(), server)

    print('RPC Listening On Port 50051.')
    server.add_insecure_port('[::]:50051')
    server.start()

    # since server.start() will not block,
    # a sleep-loop is added to keep alive
    try:
        while True:
            time.sleep(86400)
    except KeyboardInterrupt:
        server.stop(0)
