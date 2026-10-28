# HandFill (Minecraft Java 26.3)

HandFill fills the cuboid between two saved player positions with the supported block in the main hand. It checks the full volume and inventory count first, limits each operation to 32,768 blocks, and removes items only after `/fill` succeeds.

## Use

After installing this folder as a datapack, run `/reload`. Then stand at each corner and run:

1. `/trigger hf_pos1`
2. `/trigger hf_pos2`
3. Hold the block to use in your main hand and run `/trigger hf_fill`.

Each trigger saves the player's current position; datapacks cannot directly read left- or right-click input like a mod. The operation replaces blocks throughout the selected cuboid.

Supported items: stone, cobblestone, dirt, grass block, oak/spruce/birch planks, stone bricks, bricks, and glass. Add both the item ID to `data/handfill/tags/item/supported_blocks.json` and a matching dispatcher in `data/handfill/function/fill/save_args.mcfunction` plus a one-line function in `data/handfill/function/items/` to extend the list.

The datapack has not been run inside Minecraft here. Test in a backup world first; in particular, this datapack cannot provide a fully atomic rollback if Minecraft partially applies a command before reporting a failure.