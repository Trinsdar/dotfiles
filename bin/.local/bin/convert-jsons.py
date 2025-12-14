#!/usr/bin/env python3
import json
from operator import ne
import sys
from pathlib import Path

def readFolder(folder: Path, ctFileList: list[str], previousPath: str, nest: bool):
    for f in folder.iterdir():
        if nest & f.is_dir():
            readFolder(f, ctFileList, previousPath + "/" + f.name, nest)
        elif (not f.is_dir()) & f.name.endswith(".json"):
            with open(f) as j:
                data = json.load(j)
                if data["type"] == "minecraft:crafting_shaped":
                    itemMap: dict[str, str] = {' ' : "air"}
                    result = "<item:" + data["result"]["item"] + ">"
                    resultToRemove = result
                    if "count" in data["result"]:
                        result += " * " + str(data["result"]["count"])
                    for k, v in data["key"].items():
                        if "item" in v:
                            itemMap[k] = "<item:" + v["item"] + ">"
                        elif "tag" in v:
                            itemMap[k] = "<tag:items:" + v["tag"] + ">"
                    ctFileList.append("craftingTable.remove(" + resultToRemove + ");")
                    ctFileList.append("craftingTable.addShaped(\"crafting/" + previousPath + "/" + f.name.replace(".json", "") + "\", " + result + ", [")
                    for j, s in enumerate(data["pattern"]):
                        a = "["
                        for i, c in enumerate(s):
                            if c in itemMap:
                                a += itemMap[c]
                            if i != (len(s) - 1): 
                                a += ", "
                        a += "]"
                        if j != (len(data["pattern"]) - 1):
                            a += ","

                        ctFileList.append("  " + a)
                    ctFileList.append("]);")
                elif data["type"] == "minecraft:crafting_shapeless":
                    result = "<item:" + data["result"]["item"] + ">"
                    resultToRemove = result
                    if "count" in data["result"]:
                        result += " * " + str(data["result"]["count"])
                    a = "["
                    for i, ing in enumerate(data["ingredients"]):
                        if "item" in ing:
                            a += "<item:" + ing["item"] + ">"
                        elif "tag" in ing:
                            a += "<tag:items:" + ing["tag"] + ">"
                        if i != (len(data["ingredients"]) - 1): 
                            a += ", "
                    a += "]"
                    ctFileList.append("craftingTable.remove(" + resultToRemove + ");")
                    ctFileList.append("craftingTable.addShapeless(\"crafting/" + previousPath + "/" + f.name.replace(".json", "") + "\", " + result + ", " + a + ");")








if len(sys.argv) >= 2:
    fileList = Path(sys.argv[1])
else:
    fileList  = Path(".")
absolutePath = fileList.absolute()
for fd in fileList.iterdir():
    if fd.is_dir():
        ctFileList: list[str] = []
        readFolder(fd, ctFileList, fd.name, True)
        if ctFileList:
            ctFileList.insert(0, "var air = <item:minecraft:air>;")
            with open(str(fileList.absolute()) + "/" + fd.name + ".zs", "w") as f:
                for s in ctFileList:
                    _ = f.write(s + "\n")

ctFileList: list[str] = []
readFolder(fileList, ctFileList, fileList.name, False)
if ctFileList:
    ctFileList.insert(0, "var air = <item:minecraft:air>;")
    with open(str(fileList.absolute()) + "/" + fileList.name + ".zs", "w") as f:
        for s in ctFileList:
            _ = f.write(s + "\n")

