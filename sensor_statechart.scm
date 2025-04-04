{
  "graph": {
    "cells": [
      {
        "position": {
          "x": 0,
          "y": 0
        },
        "size": {
          "height": 10,
          "width": 10
        },
        "angle": 0,
        "type": "Statechart",
        "id": "78749915-0da0-40a2-862f-9e8d94c7c68e",
        "linkable": false,
        "z": 1,
        "attrs": {
          "name": {
            "text": "sensor_statechart Export Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\n\ninterface: \n    in event EV_BTN_XX_UP\n    in event EV_BTN_XX_DOWN\n    var temp : integer\n\n"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 874,
          "y": 594
        },
        "size": {
          "height": 60,
          "width": 100.828125
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "1324425d-8338-431f-b958-6e07e6dae47e",
        "z": 14,
        "embeds": [
          "72fe328b-c368-4a73-b66b-84d050d1a37b"
        ],
        "attrs": {
          "name": {
            "text": "ST_BTN_XX_DOWN"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 592,
          "y": 389
        },
        "size": {
          "height": 60,
          "width": 100.828125
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "ff7ccc36-b247-452a-becf-2ddfce20e5f9",
        "z": 16,
        "embeds": [
          "032fae01-351d-44dd-8b68-e48de9e9ec25"
        ],
        "attrs": {
          "name": {
            "text": "ST_BTN_XX_RISE"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 1139,
          "y": 389
        },
        "size": {
          "height": 60,
          "width": 100.828125
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "1e3e8052-aee1-4ad2-8deb-3e1723b484c6",
        "z": 17,
        "embeds": [
          "0b0c10c4-224a-4464-9fc5-98557742836a"
        ],
        "attrs": {
          "name": {
            "text": "ST_BTN_XX_FALL"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "1e3e8052-aee1-4ad2-8deb-3e1723b484c6"
        },
        "target": {
          "id": "1324425d-8338-431f-b958-6e07e6dae47e",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 96.0140380859375,
              "dy": 48,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_XX_DOWN [temp == 0]"
              }
            },
            "position": {
              "distance": 0.5817723619106544,
              "offset": -18,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "3369e82d-45ee-4ec3-b951-4db95468df67",
        "z": 20,
        "vertices": [
          {
            "x": 1130,
            "y": 642
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "1e3e8052-aee1-4ad2-8deb-3e1723b484c6"
        },
        "target": {
          "id": "1e3e8052-aee1-4ad2-8deb-3e1723b484c6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 100.0140380859375,
              "dy": 32,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "after 1 ms [temp > 0] / temp-- "
              }
            },
            "position": {
              "distance": 0.5456391090170567,
              "offset": 14,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "2",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "0b0c10c4-224a-4464-9fc5-98557742836a",
        "z": 21,
        "parent": "1e3e8052-aee1-4ad2-8deb-3e1723b484c6",
        "vertices": [
          {
            "x": 1164,
            "y": 481
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "1324425d-8338-431f-b958-6e07e6dae47e"
        },
        "target": {
          "id": "ff7ccc36-b247-452a-becf-2ddfce20e5f9",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 48.0140380859375,
              "dy": 63,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_XX_UP/ temp = 2500"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "222a6d76-0cee-4d7e-9c48-0f5fbe6f2036",
        "z": 27,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "ff7ccc36-b247-452a-becf-2ddfce20e5f9",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 29.0140380859375,
              "dy": 62,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "ff7ccc36-b247-452a-becf-2ddfce20e5f9",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 82.0140380859375,
              "dy": 62,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "after 1 ms [temp > 0] / temp--"
              }
            },
            "position": {
              "distance": 0.4476229295567115,
              "offset": 33,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "2",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "032fae01-351d-44dd-8b68-e48de9e9ec25",
        "z": 28,
        "vertices": [
          {
            "x": 674.01,
            "y": 476
          }
        ],
        "parent": "ff7ccc36-b247-452a-becf-2ddfce20e5f9",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "ff7ccc36-b247-452a-becf-2ddfce20e5f9"
        },
        "target": {
          "id": "1324425d-8338-431f-b958-6e07e6dae47e",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 43.0140380859375,
              "dy": 6,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_XX_DOWN"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "2",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "1fd8e7d4-9615-4c56-917a-c8f2dc09a29f",
        "z": 29,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "1324425d-8338-431f-b958-6e07e6dae47e"
        },
        "target": {
          "id": "1324425d-8338-431f-b958-6e07e6dae47e",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 62.0140380859375,
              "dy": 63,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_XX_DOWN"
              }
            },
            "position": {
              "distance": 0.5261558343219906,
              "offset": 12,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "2",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "72fe328b-c368-4a73-b66b-84d050d1a37b",
        "z": 31,
        "parent": "1324425d-8338-431f-b958-6e07e6dae47e",
        "vertices": [
          {
            "x": 899,
            "y": 679
          }
        ],
        "attrs": {}
      },
      {
        "type": "Entry",
        "position": {
          "x": 592,
          "y": 125.5
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "entryKind": "Initial",
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "id": "a4d257fe-72cb-4334-9a1f-b5a8b4f886fb",
        "z": 33,
        "embeds": [
          "f70f632c-e54d-4002-9ec5-7baec620de10"
        ],
        "attrs": {
          "history": {
            "fill": "#EFEFEF"
          },
          "star": {
            "fill": "#EFEFEF",
            "stroke": "#555555"
          },
          "name": {
            "fill": "#CFD8DC"
          }
        }
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": 592,
          "y": 140.5
        },
        "id": "f70f632c-e54d-4002-9ec5-7baec620de10",
        "z": 34,
        "parent": "a4d257fe-72cb-4334-9a1f-b5a8b4f886fb",
        "attrs": {
          "label": {
            "fill": "#C5C8C6",
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 874,
          "y": 210
        },
        "size": {
          "height": 60,
          "width": 86.421875
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "adc4c1dd-4adc-4e30-bf8b-12ddd7083dcb",
        "z": 37,
        "embeds": [
          "27c7a493-697e-41e8-8b69-abe5f0fea77c"
        ],
        "attrs": {
          "name": {
            "text": "ST_BTN_XX_UP"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "ff7ccc36-b247-452a-becf-2ddfce20e5f9"
        },
        "target": {
          "id": "adc4c1dd-4adc-4e30-bf8b-12ddd7083dcb",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 3.01092529296875,
              "dy": 37,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_XX_UP [temp == 0]"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "3",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "e05909e9-e48d-4cb5-b57c-8fb9988a7b13",
        "z": 38,
        "vertices": [
          {
            "x": 747,
            "y": 249
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "1e3e8052-aee1-4ad2-8deb-3e1723b484c6"
        },
        "target": {
          "id": "adc4c1dd-4adc-4e30-bf8b-12ddd7083dcb",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 82.01092529296875,
              "dy": 59,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_XX_UP [temp == 0]"
              }
            },
            "position": {
              "distance": 0.7745560161745405,
              "offset": 44.8819203045467,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "3",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "fc548904-c4f6-4ad8-bd66-63e8c9613d26",
        "z": 38,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "adc4c1dd-4adc-4e30-bf8b-12ddd7083dcb"
        },
        "target": {
          "id": "1e3e8052-aee1-4ad2-8deb-3e1723b484c6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 51.0140380859375,
              "dy": 7,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_XX_DOWN / temp = 2500"
              }
            },
            "position": {
              "distance": 0.494635272376168,
              "offset": -42,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "6405c792-bf63-4050-b7f1-0a7f50c550db",
        "z": 38,
        "vertices": [
          {
            "x": 1135,
            "y": 242
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "adc4c1dd-4adc-4e30-bf8b-12ddd7083dcb"
        },
        "target": {
          "id": "adc4c1dd-4adc-4e30-bf8b-12ddd7083dcb",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 23.01092529296875,
              "dy": 60,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_XX_UP"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "2",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "27c7a493-697e-41e8-8b69-abe5f0fea77c",
        "z": 38,
        "parent": "adc4c1dd-4adc-4e30-bf8b-12ddd7083dcb",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "a4d257fe-72cb-4334-9a1f-b5a8b4f886fb"
        },
        "target": {
          "id": "adc4c1dd-4adc-4e30-bf8b-12ddd7083dcb",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 44.01092529296875,
              "dy": 2,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "8e612712-6480-4600-92a1-f32a2a05091a",
        "z": 39,
        "attrs": {}
      }
    ]
  },
  "genModel": {
    "generator": {
      "type": "create::c",
      "features": {
        "Outlet": {
          "targetProject": "",
          "targetFolder": "",
          "libraryTargetFolder": "",
          "skipLibraryFiles": "",
          "apiTargetFolder": ""
        },
        "LicenseHeader": {
          "licenseText": ""
        },
        "FunctionInlining": {
          "inlineReactions": false,
          "inlineEntryActions": false,
          "inlineExitActions": false,
          "inlineEnterSequences": false,
          "inlineExitSequences": false,
          "inlineChoices": false,
          "inlineEnterRegion": false,
          "inlineExitRegion": false,
          "inlineEntries": false
        },
        "OutEventAPI": {
          "observables": false,
          "getters": false
        },
        "IdentifierSettings": {
          "moduleName": "MyFirstStatechartExport",
          "statemachinePrefix": "myFirstStatechartExport",
          "separator": "_",
          "headerFilenameExtension": "h",
          "sourceFilenameExtension": "c"
        },
        "Tracing": {
          "enterState": "",
          "exitState": "",
          "generic": ""
        },
        "Includes": {
          "useRelativePaths": false,
          "generateAllSpecifiedIncludes": false
        },
        "GeneratorOptions": {
          "userAllocatedQueue": false,
          "metaSource": false
        },
        "GeneralFeatures": {
          "timerService": false,
          "timerServiceTimeType": ""
        },
        "Debug": {
          "dumpSexec": false
        }
      }
    }
  }
}