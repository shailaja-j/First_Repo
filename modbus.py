from pymodbus.client.sync import ModbusSerialClient
from pymodbus.pdu import ModbusResponse, ExceptionResponse

client = ModbusSerialClient(

    method='rtu',

    port='COM1',

    baudrate=9600,

    timeout=0.05,

    parity='N',

    stopbits=1,

    bytesize=8

)

def connection():
    if not client.connect():
        return 0
    else:
        return 1
    
def func_04(address, count):
    if client.connect():
        res = client.read_input_registers(address=address,count=count,unit=1)

        if not res.isError():

            print(res.registers)
        else:
            print(res)
        return ((res.registers))
    else:
        print('cannot connect to the Modbus Server/ Slave')

func_04(30000,2)

