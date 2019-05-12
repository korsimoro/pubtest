
import os
import tabledata
import pytablewriter


def dictlist_from_tabledata(td):
    result = []
    for row in td.rows:
        obj = dict()
        index = 0
        for value in row:
            key = str(td.headers[index])
            index += 1
            obj[key] = str(value)
        result.append(obj)
    return result

def tabledata_save_to_yaml(result_path,td):
    data = dictlist_from_tabledata(td)
    with open(result_path, 'w') as outfile:
        yaml.dump(data, outfile, default_flow_style=False)
        print("Updated",result_path)

def tabledata_from_dictlist(name,data):
    keys = set()
    for x in data:
        if type(x) == dict:
            for key in x.keys():
                keys.add(key)
        else:
            for key in x.__dict__.keys():
                keys.add(key)

    headers = list(keys)
    headers.sort()
    rows = []

    for obj in data:
        row_data = []
        for key in headers:
            if type(obj) == dict:
                target = obj
            else:
                target = obj.__dict__
            if key in target:
                row_data.append(target[key])
            else:
                row_data.append(None)
        rows.append(row_data)

    return tabledata.TableData(name,headers,rows)
