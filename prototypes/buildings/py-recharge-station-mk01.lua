RECIPE {
    type = 'recipe',
    name = 'py-recharge-station-mk01',
    energy_required = 10,
    enabled = false,
    ingredients = {
        {'steel-plate', 20},
        {'copper-plate', 15},
        {'copper-cable', 30},
        {'electronic-circuit', 10}
    },
    results = {
        {'py-recharge-station-mk01', 1}
    }
}:add_unlock('engine')

ITEM {
    type = 'item',
    name = 'py-recharge-station-mk01',
    icon = '__pyindustry__/graphics/icons/py-recharge-station-mk01.png',
    icon_size = 32,
    flags = {},
    subgroup = 'py-robots',
    order = 'a',
    place_result = 'py-recharge-station-mk01',
    stack_size = 10
}:subgroup_order('py-hightech-buildings', 'b')

ENTITY {
    type = "roboport",
    name = "py-recharge-station-mk01",
    icon = "__pyindustry__/graphics/icons/py-recharge-station-mk01.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.1, result = "py-recharge-station-mk01"},
    fast_replaceable_group = "roboport",
    max_health = 1000,
    corpse = "medium-remnants",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    dying_explosion = "medium-explosion",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      input_flow_limit = "25000kW",
      buffer_capacity = "300MJ"
    },
    recharge_minimum = "60MJ",
    energy_usage = "0kW",
    -- per one charge slot
    charging_energy = "5000kW",
    logistics_radius = 1,
    construction_radius = 1,
    charge_approach_distance = 5,
    robot_slots_count = 0,
    material_slots_count = 0,
    stationing_offset = {0, 0},
    charging_offsets =
    {
      {-0.5, -2.5}, {0.5, -2.5}, {-0.5, 2.5}, {0.5, 2.5},
    },
    base_animation =
    {
      filename = "__pyindustry__/graphics/entity/py-recharge-station-mk01/pilar.png",
      line_length = 12,
      width = 160,
      height = 224,
      frame_count = 100,
      shift = util.by_pixel(0, -64),
      animation_speed = 0.5,
    },
    base =
    {
        filename = "__pyindustry__/graphics/entity/py-recharge-station-mk01/blank.png",
        width = 1,
        height = 1,
        frame_count = 1,
    },
    base_patch =
    {
      filename = "__pyindustry__/graphics/entity/py-recharge-station-mk01/blank.png",
      width = 1,
      height = 1,
      frame_count = 1,
    },
    door_animation_up =
    {
      filename = "__pyindustry__/graphics/entity/py-recharge-station-mk01/blank.png",
      width = 1,
      height = 1,
      frame_count = 1,
    },
    door_animation_down =
    {
      filename = "__pyindustry__/graphics/entity/py-recharge-station-mk01/blank.png",
      width = 1,
      height = 1,
      frame_count = 1,
    },
    recharging_animation = {
        filename = '__pyindustry__/graphics/entity/py-roboport-mk01/effect.png',
        priority = 'high',
        width = 128,
        height = 88,
        frame_count = 16,
        shift = util.by_pixel(-1, -21),
        scale = 0.5,
        animation_speed = 0.5
    },
    recharging_light = {intensity = 0.4, size = 5},
    request_to_open_door_timeout = 15,
    spawn_and_station_height = 0.33,
    radius_visualisation_picture =
    {
      filename = "__pyindustry__/graphics/entity/roboport/blank.png",
      width = 12,
      height = 12
    },
    construction_radius_visualisation_picture =
    {
      filename = "__pyindustry__/graphics/entity/roboport/blank.png",
      width = 12,
      height = 12
    },
  }