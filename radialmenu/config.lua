-- Menu configuration, array of menus to display
menuConfigs = {
    ['emotes'] = {                                  -- Example menu for emotes when player is on foot
        enableMenu = function()                     -- Function to enable/disable menu handling
            local player = GetPlayerPed(-1)
            return IsPedOnFoot(player)
        end,
        data = {                                    -- Data that is passed to Javascript
            keybind = "F1",                         -- Wheel keybind to use (case sensitive, must match entry in keybindControls table)
            style = {                               -- Wheel style settings
                sizePx = 600,                       -- Wheel size in pixels
                slices = {                          -- Slice style settings
                    default = { ['fill'] = '#000000', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.40 },
                    hover = { ['fill'] = '#0090ff', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.60 },
                    selected = { ['fill'] = '#000000', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.40 }
                },
                titles = {                          -- Text style settings
                    default = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 80,
                    height = 80
                }
            },
            wheels = {                              -- Array of wheels to display
                {
                    navAngle = 270,                 -- Oritentation of wheel
                    minRadiusPercent = 0.4,         -- Minimum radius of wheel in percentage
                    maxRadiusPercent = 0.9,         -- Maximum radius of wheel in percentage
                    labels = {"imgsrc:hp.png", "imgsrc:inventory.png", "imgsrc:pakaian.png", "imgsrc:animation.png", "imgsrc:document.png", "imgsrc:billing.png", "imgsrc:idcard.png", "imgsrc:mobil.png", "imgsrc:meyekap.png"},
                    commands = {"phone", "inventoryhud", "pakaian", "animasi", "dokumen", "billing", "idcard", "ruwetcok", "submenu6"}
                },
            }
        }
    },
    --[[['medo'] = {                                  -- Example menu for emotes when player is on foot
        enableMenu = function()                     -- Function to enable/disable menu handling
            local player = GetPlayerPed(-1)
            return IsPedOnFoot(player)
        end,
        data = {                                    -- Data that is passed to Javascript
            keybind = "F2",                         -- Wheel keybind to use (case sensitive, must match entry in keybindControls table)
            style = {                               -- Wheel style settings
                sizePx = 400,                       -- Wheel size in pixels
                slices = {                          -- Slice style settings
                    default = { ['fill'] = '#000000', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.40 },
                    hover = { ['fill'] = '#0090ff', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.60 },
                    selected = { ['fill'] = '#000000', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.40 }
                },
                titles = {                          -- Text style settings
                    default = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 80,
                    height = 80
                }
            },
            wheels = {                              -- Array of wheels to display
                {
                    navAngle = 270,                 -- Oritentation of wheel
                    minRadiusPercent = 0.4,         -- Minimum radius of wheel in percentage
                    maxRadiusPercent = 0.9,         -- Maximum radius of wheel in percentage
                    labels = {"ME", "DO"},
                    commands = {"me123", "do123"}
                },
            }
        }
    },]]

    ['vehicles'] = {                                -- Example menu for vehicle controls when player is in a vehicle
        enableMenu = function()                     -- Function to enable/disable menu handling
            local player = GetPlayerPed(-1)
            return IsPedInAnyVehicle(player, false)
        end,
        data = {                                    -- Data that is passed to Javascript
            keybind = "F1",                         -- Wheel keybind to use (case sensitive, must match entry in keybindControls table)
            style = {                               -- Wheel style settings
                sizePx = 600,                       -- Wheel size in pixels
                slices = {                          -- Slice style settings
                    default = { ['fill'] = '#000000', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.40 },
                    hover = { ['fill'] = '#0090ff', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.60 },
                    selected = { ['fill'] = '#000000', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.40 }
                },
                titles = {                          -- Text style settings
                    default = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 80,
                    height = 80
                }
            },
            wheels = {                              -- Array of wheels to display
                {
                    navAngle = 270,                 -- Oritentation of wheel
                    minRadiusPercent = 0.4,         -- Minimum radius of wheel in percentage
                    maxRadiusPercent = 0.9,         -- Maximum radius of wheel in percentage
                    labels = {"imgsrc:home.png", "imgsrc:changeseat.png", "imgsrc:engine.png", "imgsrc:doors.png", "imgsrc:trunk.png", "imgsrc:hood.png"},
                    commands = {"rumahkeduagaes", "shuff", "engine", "pintu", "trunk", "hood"}
                }
            }
        }
    }
}

-- Submenu configuration
subMenuConfigs = {
    ['pintu'] = 
    {
        data = {
            keybind = "F1",
            style = {
                sizePx = 600,
                slices = {
                    default = { ['fill'] = '#000000', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.40 },
                    hover = { ['fill'] = '#0090ff', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.60 },
                    selected = { ['fill'] = '#000000', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.40 }
                },
                titles = {                          -- Text style settings
                    default = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 80,
                    height = 80
                }
            },
            wheels = {
                {
                    navAngle = 270,
                    minRadiusPercent = 0.4,
                    maxRadiusPercent = 0.9,
                    labels = {"imgsrc:kembali.png", "imgsrc:kanan-depan.png", "imgsrc:kanan-belakang.png", "imgsrc:kiri-belakang.png", "imgsrc:kiri-depan.png"},
                    commands = {"closemenu", "door 2", "door 4", "door 3", "door 1"}
                }
            }
        }
    },
    ['animasi'] = 
    {
        data = {                                    -- Data that is passed to Javascript
            keybind = "F1",                         -- Wheel keybind to use (case sensitive, must match entry in keybindControls table)
            style = {                               -- Wheel style settings
                sizePx = 600,                       -- Wheel size in pixels
                slices = {                          -- Slice style settings
                    default = { ['fill'] = '#000000', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.40 },
                    hover = { ['fill'] = '#0090ff', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.60 },
                    selected = { ['fill'] = '#000000', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.40 }
                },
                titles = {                          -- Text style settings
                    default = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 80,
                    height = 80
                }
            },
            wheels = {                              -- Array of wheels to display
                {
                    navAngle = 270,                 -- Oritentation of wheel
                    minRadiusPercent = 0.3,         -- Minimum radius of wheel in percentage
                    maxRadiusPercent = 0.6,         -- Maximum radius of wheel in percentage
                    labels = {"CANCEL", "NO", "CHEER", "CLAP", "FOLDARMS", "LEAN"},
                    commands = {"e cancel", "e no", "e cheer", "e clap", "e foldarms2", "e lean4"}
                },
                {
                    navAngle = 285,                 -- Oritentation of wheel
                    minRadiusPercent = 0.6,         -- Minimum radius of wheel in percentage
                    maxRadiusPercent = 0.9,         -- Maximum radius of wheel in percentage
                    labels = {"SALUTE", "FINGER", "PEACE", "FACEPALM", "DAMN", "FAIL", "DEAD", "GANG1", "GANG2", "COP", "HOLSTER", "CROWDS"},
                    commands = {"e salute", "e finger", "e peace", "e facepalm", "e damn", "e fail", "e passout4", "e gang1", "e gang2", "e cop", "e holster", "e copcrowd2"}
                }
            }
        }
    },
    ['rumah'] = 
    {
        data = {
            keybind = "F1",
            style = {
                sizePx = 600,
                slices = {
                    default = { ['fill'] = '#000000', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.40 },
                    hover = { ['fill'] = '#0090ff', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.60 },
                    selected = { ['fill'] = '#000000', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.40 }
                },
                titles = {                          -- Text style settings
                    default = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 80,
                    height = 80
                }
            },
            wheels = {
                {
                    navAngle = 270,
                    minRadiusPercent = 0.4,
                    maxRadiusPercent = 0.9,
                    labels = {"imgsrc:hp.png", "imgsrc:inventory.png", "imgsrc:pakaian.png", "imgsrc:animation.png", "imgsrc:document.png", "imgsrc:billing.png", "imgsrc:idcard.png", "imgsrc:mobil.png", "imgsrc:meyekap.png"},
                    commands = {"phone", "inventoryhud", "pakaian", "animasi", "dokumen", "billing", "idcard", "ruwetcok", "submenu6"}
                }
            }
        }
    },
    ['rumahkeduagaes'] = 
    {
        data = {
            keybind = "F1",
            style = {
                sizePx = 600,
                slices = {
                    default = { ['fill'] = '#000000', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.40 },
                    hover = { ['fill'] = '#0090ff', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.60 },
                    selected = { ['fill'] = '#000000', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.40 }
                },
                titles = {                          -- Text style settings
                    default = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 80,
                    height = 80
                }
            },
            wheels = {
                {
                    navAngle = 270,
                    minRadiusPercent = 0.4,
                    maxRadiusPercent = 0.9,
                    labels = {"imgsrc:hp.png", "imgsrc:inventory.png", "imgsrc:pakaian.png", "imgsrc:animation.png", "imgsrc:document.png", "imgsrc:billing.png", "imgsrc:idcard.png", "imgsrc:mobil.png", "imgsrc:meyekap.png"},
                    commands = {"phone", "inventoryhud", "pakaian", "animasi", "dokumen", "billing", "idcard", "ruwetcok", "submenu6"}
                }
            }
        }
    },
    ['idcard'] = 
    {
        data = {
            keybind = "F1",
            style = {
                sizePx = 600,
                slices = {
                    default = { ['fill'] = '#000000', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.40 },
                    hover = { ['fill'] = '#0090ff', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.60 },
                    selected = { ['fill'] = '#000000', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.40 }
                },
                titles = {                          -- Text style settings
                    default = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 80,
                    height = 80
                }
            },
            wheels = {
                {
                    navAngle = 270,
                    minRadiusPercent = 0.4,
                    maxRadiusPercent = 0.9,
                    labels = {"imgsrc:kembali.png", "imgsrc:cktp.png", "imgsrc:ktp.png", "imgsrc:csim.png", "imgsrc:sim.png", "imgsrc:csenjata.png", "imgsrc:senjata.png"},
                    commands = {"closemenu", "lihatid", "tunjukkanktp", "lihatsim", "tunjukkankendaraan", "lihatlisensi", "tunjukkansenjataku"}
                }
            }
        }
    },
    ['ruwetcok'] = 
    {
        data = {
            keybind = "F1",
            style = {
                sizePx = 600,
                slices = {
                    default = { ['fill'] = '#000000', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.40 },
                    hover = { ['fill'] = '#0090ff', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.60 },
                    selected = { ['fill'] = '#000000', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.40 }
                },
                titles = {                          -- Text style settings
                    default = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 80,
                    height = 80
                }
            },
            wheels = {
                {
                    navAngle = 270,
                    minRadiusPercent = 0.4,
                    maxRadiusPercent = 0.9,
                    labels = {"imgsrc:kembali.png", "imgsrc:trunke.png"},
                    commands = {"closemenu", "bagasi"}
                }
            }
        }
    },
    ['pakaian'] = 
    {
        data = {
            keybind = "F1",
            style = {
                sizePx = 600,
                slices = {
                    default = { ['fill'] = '#000000', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.40 },
                    hover = { ['fill'] = '#0090ff', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.60 },
                    selected = { ['fill'] = '#000000', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.40 }
                },
                titles = {                          -- Text style settings
                    default = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 80,
                    height = 80
                }
            },
            wheels = {
                {
                    navAngle = 270,
                    minRadiusPercent = 0.4,
                    maxRadiusPercent = 0.9,
                    labels = {"imgsrc:pakaian.png", "imgsrc:earphone.png", "imgsrc:helm.png", "imgsrc:celana.png", "imgsrc:baju.png", "imgsrc:kacamata.png", "imgsrc:sandal.png", "imgsrc:topeng.png"},
                    commands = {"revertclothing", "ear", "hat", "pants", "shirt", "glasses", "shoes", "mask"}
                }
            }
        }
    },
    --[[['me123'] = 
    {
        data = {
            keybind = "F2",
            style = {
                sizePx = 600,
                slices = {
                    default = { ['fill'] = '#000000', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.40 },
                    hover = { ['fill'] = '#0090ff', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.60 },
                    selected = { ['fill'] = '#000000', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.40 }
                },
                titles = {                          -- Text style settings
                    default = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 80,
                    height = 80
                }
            },
            wheels = {
                {
                    navAngle = 270,
                    minRadiusPercent = 0.2,
                    maxRadiusPercent = 0.6,
                    labels = {"Sedang Makan", "Sedang Minum", "Memeriksa Korban", "Memberi Pertolongan", "Memijat", "Menyerah"},
                    commands = {"me Sedang Makan", "me Sedang Minum", "me Memeriksa Korban", "me Memberi Pertolongan", "me Memijat", "me Menyerah"}
                },
                {
                    navAngle = 270,                 -- Oritentation of wheel
                    minRadiusPercent = 0.6,
                    maxRadiusPercent = 0.9,
                    labels = {"Mengecek Kendaraan", "Memperbaiki Kendaraan", "Memborgol", "menggiring", "Memberi Tilang", "Menyita Kendaraan", "Mengambil Dompet", "Memberi Uang", "Menerima Uang", "Memberi Barang", "Menerima Barang", "Menyekap"},
                    commands = {"me Mengecek Kendaraan", "me Memperbaiki Kendaraan", "me Memborgol", "me menggiring", "me Memberi Tilang", "me Menyita Kendaraan", "me Mengambil Dompet", "me Memberi Uang", "me Menerima Uang", "me Memberi Barang", "me Menerima Barang", "me Menyekap"}
                }
            }
        }
    },]]
	
	['submenu6'] = {
        data = {
            keybind = "F1",
            style = {
                sizePx = 800,
                slices = {
                    default = { ['fill'] = '#000000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.60 },
                    hover = { ['fill'] = '#ff8000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.80 },
                    selected = { ['fill'] = '#ff8000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.80 }
                },
                titles = {
                    default = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 84,
                    height = 84
                }
            },
            wheels = {
                {
                    navAngle = 180,
                    minRadiusPercent = 0.3,
                    maxRadiusPercent = 0.6,
                    labels = {"Karungin", "Lepas Karung"},
                    commands = {"karungin", "lepaskarung"}
                }
            }
        }
    },
	
    --[[['do123'] = 
    {
        data = {
            keybind = "F2",
            style = {
                sizePx = 600,
                slices = {
                    default = { ['fill'] = '#000000', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.40 },
                    hover = { ['fill'] = '#0090ff', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.60 },
                    selected = { ['fill'] = '#000000', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.40 }
                },
                titles = {                          -- Text style settings
                    default = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 80,
                    height = 80
                }
            },
            wheels = {
                {
                    navAngle = 270,
                    minRadiusPercent = 0.2,
                    maxRadiusPercent = 0.6,
                    labels = {"Korban Kelaparan", "Korban Tertembak", "Korban Terjatuh", "Korban Terselamatkan", "Kendaraan Rusak", "Selesai Memperbaiki"},
                    commands = {"do Korban Kelaparan", "do Korban Tertembak", "do Korban Terjatuh", "do Korban Terselamatkan", "do Kendaraan Rusak", "do Selesai Memperbaiki"}
                }
            }
        }
    }]]
}
