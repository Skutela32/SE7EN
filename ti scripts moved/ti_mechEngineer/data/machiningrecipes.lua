--[[

define recipes to be crafted in machines

            'customAspiration',
            'customBlock',
            'customConrods',
            'customCrankshaft',
            'customExhaust',
            'customFuel',
            'customHeaders',
            'customHeads',
            'customIntake',
            'customIntercooler',
            'customPistons',
            'customValves'

--]]

if not config.autoGenerateRecipes then
    machiningRecipes = {
        customAspiration = {
            time = 1,
            label = "Custom Aspiration",
            typeof = "component",
            category = "aspiration",
            materials = {
                stock = {
                    label = "Stock",
                    requiredItems = {
                        {
                            name = "stock",
                            label = "Stock",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                sport = {
                    label = "Sport",
                    requiredItems = {
                        {
                            name = "sport",
                            label = "Sport",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                sportplus = {
                    label = "Sport+",
                    requiredItems = {
                        {
                            name = "sportplus",
                            label = "Sport+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                pro = {
                    label = "Pro",
                    requiredItems = {
                        {
                            name = "pro",
                            label = "Pro",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                proplus = {
                    label = "Pro+",
                    requiredItems = {
                        {
                            name = "proplus",
                            label = "Pro+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                super = {
                    label = "Super",
                    requiredItems = {
                        {
                            name = "super",
                            label = "Super",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                superplus = {
                    label = "Super+",
                    requiredItems = {
                        {
                            name = "superplus",
                            label = "Super+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                elite = {
                    label = "Elite",
                    requiredItems = {
                        {
                            name = "elite",
                            label = "Elite",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                eliteplus = {
                    label = "Elite+",
                    requiredItems = {
                        {
                            name = "elite",
                            label = "Elite+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                ultimate = {
                    label = "Ultimate",
                    requiredItems = {
                        {
                            name = "ultimate",
                            label = "Ultimate",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                ultimateplus = {
                    label = "Ultimate+",
                    requiredItems = {
                        {
                            name = "ultimateplus",
                            label = "Ultimate+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
            }
        },
        
        customBlock = {
            time = 1,
            label = "Custom Block",
            typeof = "engineblock",
            materials = {
                stock = {
                    label = "Stock",
                    requiredItems = {
                        {
                            name = "stock",
                            label = "Stock",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                sport = {
                    label = "Sport",
                    requiredItems = {
                        {
                            name = "sport",
                            label = "Sport",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                sportplus = {
                    label = "Sport+",
                    requiredItems = {
                        {
                            name = "sportplus",
                            label = "Sport+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                pro = {
                    label = "Pro",
                    requiredItems = {
                        {
                            name = "pro",
                            label = "Pro",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                proplus = {
                    label = "Pro+",
                    requiredItems = {
                        {
                            name = "proplus",
                            label = "Pro+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                super = {
                    label = "Super",
                    requiredItems = {
                        {
                            name = "super",
                            label = "Super",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                superplus = {
                    label = "Super+",
                    requiredItems = {
                        {
                            name = "superplus",
                            label = "Super+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                elite = {
                    label = "Elite",
                    requiredItems = {
                        {
                            name = "elite",
                            label = "Elite",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                eliteplus = {
                    label = "Elite+",
                    requiredItems = {
                        {
                            name = "elite",
                            label = "Elite+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                ultimate = {
                    label = "Ultimate",
                    requiredItems = {
                        {
                            name = "ultimate",
                            label = "Ultimate",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                ultimateplus = {
                    label = "Ultimate+",
                    requiredItems = {
                        {
                            name = "ultimateplus",
                            label = "Ultimate+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
            }
        },
        
        customConrods = {
            time = 1,
            label = "Custom Conrods",
            typeof = "component",
            category = "conrods",
            materials = {
                stock = {
                    label = "Stock",
                    requiredItems = {
                        {
                            name = "stock",
                            label = "Stock",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                sport = {
                    label = "Sport",
                    requiredItems = {
                        {
                            name = "sport",
                            label = "Sport",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                sportplus = {
                    label = "Sport+",
                    requiredItems = {
                        {
                            name = "sportplus",
                            label = "Sport+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                pro = {
                    label = "Pro",
                    requiredItems = {
                        {
                            name = "pro",
                            label = "Pro",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                proplus = {
                    label = "Pro+",
                    requiredItems = {
                        {
                            name = "proplus",
                            label = "Pro+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                super = {
                    label = "Super",
                    requiredItems = {
                        {
                            name = "super",
                            label = "Super",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                superplus = {
                    label = "Super+",
                    requiredItems = {
                        {
                            name = "superplus",
                            label = "Super+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                elite = {
                    label = "Elite",
                    requiredItems = {
                        {
                            name = "elite",
                            label = "Elite",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                eliteplus = {
                    label = "Elite+",
                    requiredItems = {
                        {
                            name = "elite",
                            label = "Elite+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                ultimate = {
                    label = "Ultimate",
                    requiredItems = {
                        {
                            name = "ultimate",
                            label = "Ultimate",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                ultimateplus = {
                    label = "Ultimate+",
                    requiredItems = {
                        {
                            name = "ultimateplus",
                            label = "Ultimate+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
            }
        },
        
        customCrankshaft = {
            time = 1,
            label = "Custom Crankshaft",
            typeof = "component",
            category = "crankshaft",
            materials = {
                stock = {
                    label = "Stock",
                    requiredItems = {
                        {
                            name = "stock",
                            label = "Stock",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                sport = {
                    label = "Sport",
                    requiredItems = {
                        {
                            name = "sport",
                            label = "Sport",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                sportplus = {
                    label = "Sport+",
                    requiredItems = {
                        {
                            name = "sportplus",
                            label = "Sport+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                pro = {
                    label = "Pro",
                    requiredItems = {
                        {
                            name = "pro",
                            label = "Pro",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                proplus = {
                    label = "Pro+",
                    requiredItems = {
                        {
                            name = "proplus",
                            label = "Pro+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                super = {
                    label = "Super",
                    requiredItems = {
                        {
                            name = "super",
                            label = "Super",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                superplus = {
                    label = "Super+",
                    requiredItems = {
                        {
                            name = "superplus",
                            label = "Super+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                elite = {
                    label = "Elite",
                    requiredItems = {
                        {
                            name = "elite",
                            label = "Elite",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                eliteplus = {
                    label = "Elite+",
                    requiredItems = {
                        {
                            name = "elite",
                            label = "Elite+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                ultimate = {
                    label = "Ultimate",
                    requiredItems = {
                        {
                            name = "ultimate",
                            label = "Ultimate",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                ultimateplus = {
                    label = "Ultimate+",
                    requiredItems = {
                        {
                            name = "ultimateplus",
                            label = "Ultimate+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
            }
        },

        customNitrous = {
            time = 1,
            label = "Custom Nitrous",
            typeof = "component",
            category = "nitrous",
            material = "aluminium",
            requiredItems = {
                stock = {
                    label = "Stock",
                    requiredItems = {
                        {
                            name = "stock",
                            label = "Stock",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                sport = {
                    label = "Sport",
                    requiredItems = {
                        {
                            name = "sport",
                            label = "Sport",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                sportplus = {
                    label = "Sport+",
                    requiredItems = {
                        {
                            name = "sportplus",
                            label = "Sport+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                pro = {
                    label = "Pro",
                    requiredItems = {
                        {
                            name = "pro",
                            label = "Pro",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                proplus = {
                    label = "Pro+",
                    requiredItems = {
                        {
                            name = "proplus",
                            label = "Pro+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                super = {
                    label = "Super",
                    requiredItems = {
                        {
                            name = "super",
                            label = "Super",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                superplus = {
                    label = "Super+",
                    requiredItems = {
                        {
                            name = "superplus",
                            label = "Super+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                elite = {
                    label = "Elite",
                    requiredItems = {
                        {
                            name = "elite",
                            label = "Elite",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                eliteplus = {
                    label = "Elite+",
                    requiredItems = {
                        {
                            name = "elite",
                            label = "Elite+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                ultimate = {
                    label = "Ultimate",
                    requiredItems = {
                        {
                            name = "ultimate",
                            label = "Ultimate",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                ultimateplus = {
                    label = "Ultimate+",
                    requiredItems = {
                        {
                            name = "ultimateplus",
                            label = "Ultimate+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
            },    
        },
        
        customExhaust = {
            time = 1,
            label = "Custom Exhaust",
            typeof = "component",
            category = "exhaust",
            materials = {
                stock = {
                    label = "Stock",
                    requiredItems = {
                        {
                            name = "stock",
                            label = "Stock",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                sport = {
                    label = "Sport",
                    requiredItems = {
                        {
                            name = "sport",
                            label = "Sport",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                sportplus = {
                    label = "Sport+",
                    requiredItems = {
                        {
                            name = "sportplus",
                            label = "Sport+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                pro = {
                    label = "Pro",
                    requiredItems = {
                        {
                            name = "pro",
                            label = "Pro",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                proplus = {
                    label = "Pro+",
                    requiredItems = {
                        {
                            name = "proplus",
                            label = "Pro+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                super = {
                    label = "Super",
                    requiredItems = {
                        {
                            name = "super",
                            label = "Super",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                superplus = {
                    label = "Super+",
                    requiredItems = {
                        {
                            name = "superplus",
                            label = "Super+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                elite = {
                    label = "Elite",
                    requiredItems = {
                        {
                            name = "elite",
                            label = "Elite",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                eliteplus = {
                    label = "Elite+",
                    requiredItems = {
                        {
                            name = "elite",
                            label = "Elite+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                ultimate = {
                    label = "Ultimate",
                    requiredItems = {
                        {
                            name = "ultimate",
                            label = "Ultimate",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                ultimateplus = {
                    label = "Ultimate+",
                    requiredItems = {
                        {
                            name = "ultimateplus",
                            label = "Ultimate+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
            }
        },
        
        customFuel = {
            time = 1,
            label = "Custom Fuel",
            typeof = "component",
            category = "fuel",
            materials = {
                stock = {
                    label = "Stock",
                    requiredItems = {
                        {
                            name = "stock",
                            label = "Stock",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                sport = {
                    label = "Sport",
                    requiredItems = {
                        {
                            name = "sport",
                            label = "Sport",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                sportplus = {
                    label = "Sport+",
                    requiredItems = {
                        {
                            name = "sportplus",
                            label = "Sport+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                pro = {
                    label = "Pro",
                    requiredItems = {
                        {
                            name = "pro",
                            label = "Pro",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                proplus = {
                    label = "Pro+",
                    requiredItems = {
                        {
                            name = "proplus",
                            label = "Pro+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                super = {
                    label = "Super",
                    requiredItems = {
                        {
                            name = "super",
                            label = "Super",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                superplus = {
                    label = "Super+",
                    requiredItems = {
                        {
                            name = "superplus",
                            label = "Super+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                elite = {
                    label = "Elite",
                    requiredItems = {
                        {
                            name = "elite",
                            label = "Elite",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                eliteplus = {
                    label = "Elite+",
                    requiredItems = {
                        {
                            name = "elite",
                            label = "Elite+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                ultimate = {
                    label = "Ultimate",
                    requiredItems = {
                        {
                            name = "ultimate",
                            label = "Ultimate",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                ultimateplus = {
                    label = "Ultimate+",
                    requiredItems = {
                        {
                            name = "ultimateplus",
                            label = "Ultimate+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
            }
        },
        
        customHeaders = {
            time = 1,
            label = "Custom Headers",
            typeof = "component",
            category = "headers",
            materials = {
                stock = {
                    label = "Stock",
                    requiredItems = {
                        {
                            name = "stock",
                            label = "Stock",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                sport = {
                    label = "Sport",
                    requiredItems = {
                        {
                            name = "sport",
                            label = "Sport",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                sportplus = {
                    label = "Sport+",
                    requiredItems = {
                        {
                            name = "sportplus",
                            label = "Sport+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                pro = {
                    label = "Pro",
                    requiredItems = {
                        {
                            name = "pro",
                            label = "Pro",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                proplus = {
                    label = "Pro+",
                    requiredItems = {
                        {
                            name = "proplus",
                            label = "Pro+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                super = {
                    label = "Super",
                    requiredItems = {
                        {
                            name = "super",
                            label = "Super",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                superplus = {
                    label = "Super+",
                    requiredItems = {
                        {
                            name = "superplus",
                            label = "Super+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                elite = {
                    label = "Elite",
                    requiredItems = {
                        {
                            name = "elite",
                            label = "Elite",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                eliteplus = {
                    label = "Elite+",
                    requiredItems = {
                        {
                            name = "elite",
                            label = "Elite+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                ultimate = {
                    label = "Ultimate",
                    requiredItems = {
                        {
                            name = "ultimate",
                            label = "Ultimate",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                ultimateplus = {
                    label = "Ultimate+",
                    requiredItems = {
                        {
                            name = "ultimateplus",
                            label = "Ultimate+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
            }
        },
        customHeads = {
            time = 1,
            label = "Custom Heads",
            typeof = "component",
            category = "heads",
            materials = {
                stock = {
                    label = "Stock",
                    requiredItems = {
                        {
                            name = "stock",
                            label = "Stock",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                sport = {
                    label = "Sport",
                    requiredItems = {
                        {
                            name = "sport",
                            label = "Sport",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                sportplus = {
                    label = "Sport+",
                    requiredItems = {
                        {
                            name = "sportplus",
                            label = "Sport+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                pro = {
                    label = "Pro",
                    requiredItems = {
                        {
                            name = "pro",
                            label = "Pro",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                proplus = {
                    label = "Pro+",
                    requiredItems = {
                        {
                            name = "proplus",
                            label = "Pro+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                super = {
                    label = "Super",
                    requiredItems = {
                        {
                            name = "super",
                            label = "Super",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                superplus = {
                    label = "Super+",
                    requiredItems = {
                        {
                            name = "superplus",
                            label = "Super+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                elite = {
                    label = "Elite",
                    requiredItems = {
                        {
                            name = "elite",
                            label = "Elite",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                eliteplus = {
                    label = "Elite+",
                    requiredItems = {
                        {
                            name = "elite",
                            label = "Elite+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                ultimate = {
                    label = "Ultimate",
                    requiredItems = {
                        {
                            name = "ultimate",
                            label = "Ultimate",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                ultimateplus = {
                    label = "Ultimate+",
                    requiredItems = {
                        {
                            name = "ultimateplus",
                            label = "Ultimate+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
            }
        },
        customIntake = {
            time = 1,
            label = "Custom Intake",
            typeof = "component",
            category = "intake",
            materials = {
                stock = {
                    label = "Stock",
                    requiredItems = {
                        {
                            name = "stock",
                            label = "Stock",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                sport = {
                    label = "Sport",
                    requiredItems = {
                        {
                            name = "sport",
                            label = "Sport",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                sportplus = {
                    label = "Sport+",
                    requiredItems = {
                        {
                            name = "sportplus",
                            label = "Sport+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                pro = {
                    label = "Pro",
                    requiredItems = {
                        {
                            name = "pro",
                            label = "Pro",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                proplus = {
                    label = "Pro+",
                    requiredItems = {
                        {
                            name = "proplus",
                            label = "Pro+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                super = {
                    label = "Super",
                    requiredItems = {
                        {
                            name = "super",
                            label = "Super",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                superplus = {
                    label = "Super+",
                    requiredItems = {
                        {
                            name = "superplus",
                            label = "Super+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                elite = {
                    label = "Elite",
                    requiredItems = {
                        {
                            name = "elite",
                            label = "Elite",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                eliteplus = {
                    label = "Elite+",
                    requiredItems = {
                        {
                            name = "elite",
                            label = "Elite+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                ultimate = {
                    label = "Ultimate",
                    requiredItems = {
                        {
                            name = "ultimate",
                            label = "Ultimate",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                ultimateplus = {
                    label = "Ultimate+",
                    requiredItems = {
                        {
                            name = "ultimateplus",
                            label = "Ultimate+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
            }
        },
        customIntercooler = {
            time = 1,
            label = "Custom Intercooler",
            typeof = "component",
            category = "intercooler",
            materials = {
                stock = {
                    label = "Stock",
                    requiredItems = {
                        {
                            name = "stock",
                            label = "Stock",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                sport = {
                    label = "Sport",
                    requiredItems = {
                        {
                            name = "sport",
                            label = "Sport",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                sportplus = {
                    label = "Sport+",
                    requiredItems = {
                        {
                            name = "sportplus",
                            label = "Sport+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                pro = {
                    label = "Pro",
                    requiredItems = {
                        {
                            name = "pro",
                            label = "Pro",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                proplus = {
                    label = "Pro+",
                    requiredItems = {
                        {
                            name = "proplus",
                            label = "Pro+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                super = {
                    label = "Super",
                    requiredItems = {
                        {
                            name = "super",
                            label = "Super",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                superplus = {
                    label = "Super+",
                    requiredItems = {
                        {
                            name = "superplus",
                            label = "Super+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                elite = {
                    label = "Elite",
                    requiredItems = {
                        {
                            name = "elite",
                            label = "Elite",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                eliteplus = {
                    label = "Elite+",
                    requiredItems = {
                        {
                            name = "elite",
                            label = "Elite+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                ultimate = {
                    label = "Ultimate",
                    requiredItems = {
                        {
                            name = "ultimate",
                            label = "Ultimate",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                ultimateplus = {
                    label = "Ultimate+",
                    requiredItems = {
                        {
                            name = "ultimateplus",
                            label = "Ultimate+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
            }
        },
        customPistons = {
            time = 1,
            label = "Custom Pistons",
            typeof = "component",
            category = "pistons",
            materials = {
                stock = {
                    label = "Stock",
                    requiredItems = {
                        {
                            name = "stock",
                            label = "Stock",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                sport = {
                    label = "Sport",
                    requiredItems = {
                        {
                            name = "sport",
                            label = "Sport",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                sportplus = {
                    label = "Sport+",
                    requiredItems = {
                        {
                            name = "sportplus",
                            label = "Sport+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                pro = {
                    label = "Pro",
                    requiredItems = {
                        {
                            name = "pro",
                            label = "Pro",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                proplus = {
                    label = "Pro+",
                    requiredItems = {
                        {
                            name = "proplus",
                            label = "Pro+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                super = {
                    label = "Super",
                    requiredItems = {
                        {
                            name = "super",
                            label = "Super",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                superplus = {
                    label = "Super+",
                    requiredItems = {
                        {
                            name = "superplus",
                            label = "Super+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                elite = {
                    label = "Elite",
                    requiredItems = {
                        {
                            name = "elite",
                            label = "Elite",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                eliteplus = {
                    label = "Elite+",
                    requiredItems = {
                        {
                            name = "elite",
                            label = "Elite+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                ultimate = {
                    label = "Ultimate",
                    requiredItems = {
                        {
                            name = "ultimate",
                            label = "Ultimate",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                ultimateplus = {
                    label = "Ultimate+",
                    requiredItems = {
                        {
                            name = "ultimateplus",
                            label = "Ultimate+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
            }
        },
        customValves = {
            time = 1,
            label = "Custom Valves",
            typeof = "component",
            category = "valves",
            materials = {
                stock = {
                    label = "Stock",
                    requiredItems = {
                        {
                            name = "stock",
                            label = "Stock",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                sport = {
                    label = "Sport",
                    requiredItems = {
                        {
                            name = "sport",
                            label = "Sport",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                sportplus = {
                    label = "Sport+",
                    requiredItems = {
                        {
                            name = "sportplus",
                            label = "Sport+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                pro = {
                    label = "Pro",
                    requiredItems = {
                        {
                            name = "pro",
                            label = "Pro",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                proplus = {
                    label = "Pro+",
                    requiredItems = {
                        {
                            name = "proplus",
                            label = "Pro+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                super = {
                    label = "Super",
                    requiredItems = {
                        {
                            name = "super",
                            label = "Super",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                superplus = {
                    label = "Super+",
                    requiredItems = {
                        {
                            name = "superplus",
                            label = "Super+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                elite = {
                    label = "Elite",
                    requiredItems = {
                        {
                            name = "elite",
                            label = "Elite",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                eliteplus = {
                    label = "Elite+",
                    requiredItems = {
                        {
                            name = "elite",
                            label = "Elite+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
                ultimate = {
                    label = "Ultimate",
                    requiredItems = {
                        {
                            name = "ultimate",
                            label = "Ultimate",
                            count = 5,
                            keep = false,
                        }
                    }
                },
                ultimateplus = {
                    label = "Ultimate+",
                    requiredItems = {
                        {
                            name = "ultimateplus",
                            label = "Ultimate+",
                            count = 10,
                            keep = false,
                        }
                    }
                },
            }
        },
    }
else
    --
    -- Auto generate the recipes for each component type and material,
    -- Using the materials from ti_vehicleTuning/data/materials.lua.
    --
    machiningRecipes = {}

    local f = LoadResourceFile("ti_vehicleTuning", "data/materials.lua")
    local fn = load(f)

    if not fn then
        print("Failed to load materials.lua")
        return
    end

    fn()

    local extraComponentItems = config.autoGeneratedRecipeItems or {}

    for category in pairs(EngineItems) do
        local recipe = {
            time = config.generatedDefaultTime,
            label = category:sub(1,1):upper() .. category:sub(2),
            typeof = category == "block" and "engineblock" or "component",
            category = category,
            materials = {}
        }

        for name,material in pairs(Materials) do
            local extraComponentItems = extraComponentItems[category] or {}

            local requiredItems = {
                {
                    name = name,
                    label = material.label,
                    count = config.generatedDefaultMaterials * math.ceil(material.prestige * config.prestigeMaterialMultiplier),
                    keep = false,
                }
            }

            for itemName,item in pairs(extraComponentItems) do
                table.insert(requiredItems, {
                    name = itemName:lower(),
                    label = item.label,
                    count = item.count,
                    keep = false,
                })
            end

            recipe.materials[name] = {
                label = material.label,
                requiredItems = requiredItems
            }
        end

        machiningRecipes[category] = recipe
    end
end