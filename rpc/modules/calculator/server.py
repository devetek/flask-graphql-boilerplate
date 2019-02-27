import grpc
from concurrent import futures
import time

# import the generated classes
import rpc.modules.calculator.calculator_pb2 as calculator_pb2
import rpc.modules.calculator.calculator_pb2_grpc as calculator_pb2_grpc

from rpc.modules.calculator import square_root


class CalculatorServicer(calculator_pb2_grpc.CalculatorServicer):

    """[Define your calculator handler]

    Arguments:
        calculator_pb2_grpc {[type]} -- [description]

    Returns:
        [type] -- [description]
    """

    def SquareRoot(self, request, context):
        response = calculator_pb2.Number()
        response.value = square_root(request.value)
        return response


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
