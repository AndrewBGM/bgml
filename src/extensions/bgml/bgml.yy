{
    "id": "a742e73d-9e7b-4333-9087-674c181454f6",
    "modelName": "GMExtension",
    "mvc": "1.0",
    "name": "bgml",
    "IncludedResources": [
        
    ],
    "androidPermissions": [
        
    ],
    "androidProps": false,
    "androidactivityinject": "",
    "androidclassname": "",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "",
    "copyToTargets": -1,
    "date": "2018-39-30 12:04:24",
    "description": "",
    "extensionName": "",
    "files": [
        {
            "id": "4d47d3d8-a6ad-4739-bdaa-acad29a53fbd",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "f75442ca-c388-4953-98d9-741297b6472d",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "drawdepth_highest",
                    "hidden": false,
                    "value": "-15998"
                },
                {
                    "id": "416fe08e-40c9-4657-837a-68cc26666558",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "drawdepth_lowest",
                    "hidden": false,
                    "value": "15999"
                }
            ],
            "copyToTargets": -1,
            "filename": "bgml.gml",
            "final": "",
            "functions": [
                {
                    "id": "3afb7490-123a-4d19-a9ca-ad6dee5cfd2e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "stringf",
                    "help": "stringf(string,...args)",
                    "hidden": false,
                    "kind": 2,
                    "name": "stringf",
                    "returnType": 1
                },
                {
                    "id": "2e0b808e-7109-430f-a0be-a0f43b3d6f1d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "string_split",
                    "help": "string_split(string,separator,[limit])",
                    "hidden": false,
                    "kind": 2,
                    "name": "string_split",
                    "returnType": 1
                },
                {
                    "id": "881a6c1c-b833-4fb0-a375-f1618b3cde7f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "array_join",
                    "help": "array_join(array,[separator=\",\"])",
                    "hidden": false,
                    "kind": 2,
                    "name": "array_join",
                    "returnType": 1
                },
                {
                    "id": "cbfa6778-9273-498a-8ff0-40c6421c41ac",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "ds_list_join",
                    "help": "ds_list_join(id,[separator=\",\"])",
                    "hidden": false,
                    "kind": 2,
                    "name": "ds_list_join",
                    "returnType": 1
                },
                {
                    "id": "02069a8f-290f-4918-ab2c-73a426ecd2ca",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "printf",
                    "help": "printf(string,...args)",
                    "hidden": false,
                    "kind": 2,
                    "name": "printf",
                    "returnType": 1
                },
                {
                    "id": "87fd1c6c-7716-4edd-84b4-650eedfb5fcc",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "draw_rectangle_fast",
                    "help": "draw_rectangle_fast(sprite,x,y,width,height,color,alpha,outline)",
                    "hidden": false,
                    "kind": 2,
                    "name": "draw_rectangle_fast",
                    "returnType": 1
                },
                {
                    "id": "86917ee7-de73-4d12-8385-6fa891502779",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "draw_line_fast",
                    "help": "draw_line_fast(sprite,x1,y1,x2,y2,color,alpha)",
                    "hidden": false,
                    "kind": 2,
                    "name": "draw_line_fast",
                    "returnType": 1
                },
                {
                    "id": "1bfbfb9c-e587-4f5b-9638-534dd58b36f1",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "string_trim",
                    "help": "string_trim(string,[chars=\" \"])",
                    "hidden": false,
                    "kind": 2,
                    "name": "string_trim",
                    "returnType": 1
                },
                {
                    "id": "645c84a1-d49f-46f1-8c9d-2b44c19b4b4e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "string_ltrim",
                    "help": "string_ltrim(string,[chars=\" \"])",
                    "hidden": false,
                    "kind": 2,
                    "name": "string_ltrim",
                    "returnType": 1
                },
                {
                    "id": "7f95dd14-5863-4521-9150-fb71521702b1",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "string_rtrim",
                    "help": "string_rtrim(string,[chars=\" \"])",
                    "hidden": false,
                    "kind": 2,
                    "name": "string_rtrim",
                    "returnType": 1
                },
                {
                    "id": "cae95906-5b0b-40ca-be05-3484f9b09d14",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "string_reverse",
                    "help": "string_reverse(string)",
                    "hidden": false,
                    "kind": 2,
                    "name": "string_reverse",
                    "returnType": 1
                },
                {
                    "id": "f19f3214-96df-4130-b73d-b3d54e280e97",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "array_reverse",
                    "help": "array_reverse(array)",
                    "hidden": false,
                    "kind": 2,
                    "name": "array_reverse",
                    "returnType": 1
                },
                {
                    "id": "6602eda4-5d88-49dd-a0f6-7812ab3b81ee",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "ds_list_reverse",
                    "help": "ds_list_reverse(id)",
                    "hidden": false,
                    "kind": 2,
                    "name": "ds_list_reverse",
                    "returnType": 1
                },
                {
                    "id": "3a5d9cbc-a997-48e7-97fd-38d90edbd6eb",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "script_execute_spread",
                    "help": "script_execute_spread(ind,args)",
                    "hidden": false,
                    "kind": 2,
                    "name": "script_execute_spread",
                    "returnType": 1
                },
                {
                    "id": "a7e1ecda-ddd2-45a1-bcb9-4409ad362ba9",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "draw_text_outline",
                    "help": "draw_text_outline(x,y,text,bgcolor,olcolor)",
                    "hidden": false,
                    "kind": 2,
                    "name": "draw_text_outline",
                    "returnType": 1
                },
                {
                    "id": "738f1edb-7ce7-447e-ab7d-b250713ab6fe",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "draw_text_styled",
                    "help": "draw_text_styled(x,y,text)",
                    "hidden": false,
                    "kind": 2,
                    "name": "draw_text_styled",
                    "returnType": 1
                }
            ],
            "init": "",
            "kind": 2,
            "order": [
                "881a6c1c-b833-4fb0-a375-f1618b3cde7f",
                "f19f3214-96df-4130-b73d-b3d54e280e97",
                "86917ee7-de73-4d12-8385-6fa891502779",
                "87fd1c6c-7716-4edd-84b4-650eedfb5fcc",
                "cbfa6778-9273-498a-8ff0-40c6421c41ac",
                "6602eda4-5d88-49dd-a0f6-7812ab3b81ee",
                "02069a8f-290f-4918-ab2c-73a426ecd2ca",
                "3a5d9cbc-a997-48e7-97fd-38d90edbd6eb",
                "3afb7490-123a-4d19-a9ca-ad6dee5cfd2e",
                "cae95906-5b0b-40ca-be05-3484f9b09d14",
                "2e0b808e-7109-430f-a0be-a0f43b3d6f1d",
                "645c84a1-d49f-46f1-8c9d-2b44c19b4b4e",
                "7f95dd14-5863-4521-9150-fb71521702b1",
                "1bfbfb9c-e587-4f5b-9638-534dd58b36f1",
                "a7e1ecda-ddd2-45a1-bcb9-4409ad362ba9",
                "738f1edb-7ce7-447e-ab7d-b250713ab6fe"
            ],
            "origname": "",
            "uncompress": false
        }
    ],
    "gradleinject": "",
    "helpfile": "",
    "installdir": "",
    "iosProps": false,
    "iosSystemFrameworkEntries": [
        
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosplistinject": "",
    "license": "",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "packageID": "",
    "productID": "",
    "sourcedir": "",
    "version": "0.0.1"
}