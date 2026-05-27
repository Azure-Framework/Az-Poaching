# Az Poaching

Az Poaching is part of the Az-Framework Summer 2.0 activity pack. It registers with Az-Summer2Core for contracts, routing, validation, rewards, and dispatch hooks.

[Framework Docs](https://madebyazure.com/framework/) | [Discord Support](https://discord.gg/tBg2U6CTHE)

## Status

- Resource: `Az-Poaching`
- Version: `cerulean`
- Framework: `Az-Framework`

## Install

```cfg
ensure oxmysql
ensure ox_lib
ensure Az-Framework
ensure Az-Summer2Core
ensure Az-Poaching
```

<details>
<summary>Dependencies</summary>

- `Az-Framework`
- `Az-Summer2Core`


</details>

<details>
<summary>Configuration Guide</summary>

1. Place the resource in your server resources folder.
2. Start dependencies before this resource.
3. Review `config.lua` or `shared/config.lua` when present.
4. Restart the resource after changing config values.

</details>

<details>
<summary>Az-Framework Integration</summary>

Use Az-Framework exports for character, money, job, metadata, and inventory bridge behavior.

```lua
local Az = exports['Az-Framework']:GetObject()
local player = exports['Az-Framework']:GetPlayer(source)
local snapshot = exports['Az-Framework']:GetBridgePlayerSnapshot(source)
```

</details>

<details>
<summary>Support</summary>

- Docs: https://madebyazure.com/framework/
- Discord: https://discord.gg/tBg2U6CTHE

</details>
