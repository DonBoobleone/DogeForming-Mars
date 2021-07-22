---------------------------------------------------------------------------
-- -- -- PRE INITIALIZATION
---------------------------------------------------------------------------
-- -- General Info
dogeforming = {}
dogeforming.internal_name = "DogeForming"
dogeforming.title_name = "DogeForming Mars"
dogeforming.version = mods[dogeforming_name]
dogeforming.stage = "data"
-- -- Global Krastorio 2 Paths
require("__DogeformingMars__/lib/paths")
-- -- Adding new categories
require(don_categories_prototypes_path .. "categories-initialization")
-- -- Adding new entities
require(don_entities_prototypes_path .. "entities-initialization")
-- -- Adding new fluids
require(don_fluids_prototypes_path .. "fluids-initialization")
-- -- Adding new items
require(don_items_prototypes_path .. "items-initialization")
-- -- Adding new particles
require(don_particles_prototypes_path .. "particles-initialization")
-- -- Adding new recipes
require(don_recipes_prototypes_path .. "recipes-initialization")
-- -- Adding new resources
require(don_resources_path .. "resources-initialization")
-- -- Adding new sounds (prototypes)
--require(don_prototypes_path .. "sounds/sounds")
-- -- Adding new technologies
require(don_technologies_prototypes_path .. "technologies-initialization")
