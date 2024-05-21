import numcodecs
import numpy as np


# item = np.array([(1, 'dataset_1', {'source': '.', 'path': '/dataset_1', 'object_id': None, 'source_object_id': None}),
#        (2, 'dataset_2', {'source': '.', 'path': '/dataset_2', 'object_id': None, 'source_object_id': None})],
#       dtype=[('id', '<i4'), ('name', 'O'), ('reference', 'O')])
# cs = numcodecs.JSON()
#
# en = cs.encode(item.tolist())
# out=cs.decode(en)
# breakpoint()

import numpy as np
import json

class StructuredArrayEncoder(json.JSONEncoder):
    def default(self, obj):
        if isinstance(obj, np.ndarray) and obj.dtype.names:
            return {'__dtype__': obj.dtype.descr, '__data__': obj.tolist()}
        return json.JSONEncoder.default(self, obj)

class StructuredArrayDecoder(json.JSONDecoder):
    def decode(self, s):
        obj = json.loads(s)
        if '__dtype__' in obj and '__data__' in obj:
            dtype = np.dtype(obj['__dtype__'])
            data = np.array(obj['__data__'], dtype=dtype)
            return data
        return obj

# Define a structured NumPy array
data = np.array([(1, 'John', 23), (2, 'Alice', 30)],
                dtype=[('id', 'i4'), ('name', 'U10'), ('age', 'i4')])

# Encode the structured array into JSON
json_data = json.dumps(data, cls=StructuredArrayEncoder)
breakpoint()

print("Encoded JSON:")
print(json_data)

# Decode the JSON back into a structured array
decoded_data = json.loads(json_data, cls=StructuredArrayDecoder)

print("\nDecoded structured array:")
print(decoded_data)
