# HandFill (Minecraft Java 26.3)

HandFill fills the cuboid between two selected blocks with the supported block in the offhand. It checks the full volume and inventory count first, limits each operation to 32,768 blocks, and removes items only after `/fill` succeeds.

## Use

After installing this folder as a datapack, run `/reload` once. The datapack gives each player three tools:

1. Right-click a block with **HandFill: Corner 1**.
2. Right-click another block with **HandFill: Corner 2**.
3. Put the building block in your offhand, then right-click with the **HandFill: Fill** fishing rod in your main hand.

The selected positions are the blocks you aim at. A datapack cannot detect left-click input like a mod, so all three actions use right-click. The tools are detected through their item-use statistics, so they can be activated while aiming at a block or into the air. Keep the tool in your main hand. The operation replaces blocks throughout the selected cuboid.

Supported items: stone, cobblestone, dirt, grass block, oak/spruce/birch planks, stone bricks, bricks, and glass. Add both the item ID to `data/handfill/tags/item/supported_blocks.json` and a matching dispatcher in `data/handfill/function/fill/save_args.mcfunction` plus a one-line function in `data/handfill/function/items/` to extend the list.

The datapack has not been run inside Minecraft here. Test in a backup world first; in particular, this datapack cannot provide a fully atomic rollback if Minecraft partially applies a command before reporting a failure.