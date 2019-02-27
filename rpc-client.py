import sys
import grpc

# import the generated classes
import rpc.modules.calculator.calculator_pb2 as calculator_pb2
import rpc.modules.calculator.calculator_pb2_grpc as calculator_pb2_grpc

# open a gRPC channel
channel = grpc.insecure_channel('localhost:50051')

# create a stub (client)
stub = calculator_pb2_grpc.CalculatorStub(channel)

# create a valid request message
userinput = float(sys.argv[1]) if len(sys.argv) > 1 else 10
number = calculator_pb2.Number(value=userinput)

# make the call
response = stub.SquareRoot(number)

# show the result
print(response.value)
