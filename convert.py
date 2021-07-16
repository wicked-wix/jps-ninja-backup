import yaml
import json

os_list = {}

with open("bn.yaml") as infile:
    os_list = yaml.load(infile, Loader=yaml.FullLoader)
    print(os_list)
    with open("bn.json", "w") as outfile:
        json.dump(os_list, outfile, indent=4)
        print("JSON file written.")