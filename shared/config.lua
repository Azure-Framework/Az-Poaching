SummerActivity = {
  id = "az_poaching",
  label = "Poaching",
  command = "poaching",
  category = "Illegal Summer",
  description = "Illegal trophies, buyer meets, ranger dispatch risk, and evidence cleanup.",
  illegal = true,
  legal = false,
  cooldownSeconds = 90,
  locations = {
    {
      x = -1494.7,
      y = 4972.3,
      z = 63.7
    },
    {
      x = 2442.5,
      y = 4754.8,
      z = 34.3
    }
  },
  contracts = {
    {
      id = "trophy_buyer",
      label = "Trophy Buyer",
      description = "Prep an illegal trophy package for a buyer.",
      reward = {
        min = 650,
        max = 1050
      },
      alertChance = 30,
      steps = {
        {
          label = "locate stash blind",
          coords = {
            x = -1494.7,
            y = 4972.3,
            z = 63.7
          },
          durationMs = 5500
        },
        {
          label = "pack trophy evidence",
          coords = {
            x = -1501,
            y = 4968.6,
            z = 63.7
          },
          durationMs = 6000
        },
        {
          label = "meet buyer",
          coords = {
            x = -1450.2,
            y = 4992.3,
            z = 63.2
          },
          durationMs = 5000
        }
      }
    },
    {
      id = "hide_tracks",
      label = "Hide Tracks",
      description = "Clean a poaching site before rangers arrive.",
      reward = {
        min = 500,
        max = 800
      },
      alertChance = 18,
      steps = {
        {
          label = "collect shell casings",
          coords = {
            x = 2442.5,
            y = 4754.8,
            z = 34.3
          },
          durationMs = 5500
        },
        {
          label = "cover tire tracks",
          coords = {
            x = 2448.1,
            y = 4761.2,
            z = 34.3
          },
          durationMs = 6000
        }
      }
    }
  }
}

return SummerActivity
