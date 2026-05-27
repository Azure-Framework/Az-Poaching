local registered = false

local function registerActivity()
  if registered then return true end
  if GetResourceState('Az-Summer2Core') ~= 'started' then return false end
  if type(SummerActivity) ~= 'table' or not SummerActivity.id then
    print(('[%s] SummerActivity config missing or invalid.'):format(GetCurrentResourceName()))
    return false
  end

  local ok, result = pcall(function()
    return exports['Az-Summer2Core']:RegisterClientActivity(SummerActivity)
  end)

  if ok and result then
    registered = true
    print(('[%s] Registered Summer 2.0 client activity: %s'):format(GetCurrentResourceName(), SummerActivity.label or SummerActivity.id))
    return true
  end

  print(('[%s] Failed to register Summer 2.0 client activity.'):format(GetCurrentResourceName()))
  return false
end

CreateThread(function()
  while not registerActivity() do
    Wait(1000)
  end
end)

CreateThread(function()
  while true do
    if not registered then
      registerActivity()
    end
    Wait(5000)
  end
end)

AddEventHandler('onClientResourceStart', function(resourceName)
  if resourceName == 'Az-Summer2Core' or resourceName == GetCurrentResourceName() then
    registered = false
    SetTimeout(750, registerActivity)
  end
end)
