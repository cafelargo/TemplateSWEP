-- Template for creating simple custom ttt2 weapons --

-- SERVER and CLIENT are global variables which return true if the script is being executed if its being executed on the server or client
print("Loaded-----------------------------------------------------------")
if SERVER then
   -- Shares the specified file with the client (if blank shares current file)
   AddCSLuaFile()

   -- Shares the buy menu icon with the client
   resource.AddFile("materials/vgui/ttt/blue_template_icon.vmt")
end

if CLIENT then
   -- Client viewpoint vals
   SWEP.PrintName          = "Template Weapon"
   SWEP.ViewModelFOV       = 70 -- How much of the first person viewmodel is seen
   SWEP.ViewModelFlip      = true -- If true, the viewmodel is on the left
   SWEP.DrawCrossHair      = false -- Does the client draw its own crosshair over the default ones

   -- Client menu data
   SWEP.Icon = "vgui/ttt/blue_template_icon.vtf" -- The filename of the icon shown in the buymenu
   -- The information shown in the buy menu
   SWEP.EquipMenuData      =
   {
      type = "item_weapon",
      name = "weapon_template_name",
      desc = "weapon_tempalte_desc"
   }
end

-- What weapon this is based upon (always use weapon_tttbase when creating a ttt/2 weapon)
SWEP.Base                  = "weapon_tttbase"

-- Primary fire vals
SWEP.Primary.Delay         = 0.001 -- Higher is slower
SWEP.Primary.Automatic     = true -- Is it automatic
SWEP.Primary.Damage        = 1 -- How much damage per shot
SWEP.Primary.Cone          = 0.5 -- Cone of accuracy
SWEP.Primary.Ammo          = "smg1" -- Which ttt ammo entity is picked up by this swep
SWEP.Primary.ClipSize      = 100 -- Maximum clip size
SWEP.Primary.DefaultClip   = 100 -- Starting clip size
SWEP.Primary.Sound         = Sound("Weapon_AK47.Single") -- Either a sound file from the default list or a custom one
SWEP.Primary.NumShots      = 1 -- Number of shots fired at one time (make into shotgun if increase conde val)
SWEP.Primary.Recoil        = 1.5 -- Recoil value (bigger = bigger)

-- Misc vals
SWEP.HoldType              = "ar2"
SWEP.ViewModel             = "models/weapons/c_irifle.mdl" -- What the swep looks like to the user
SWEP.WorldModel            = "models/weapons/w_irifle.mdl" -- What the swep looks like to everyone else
SWEP.UseHands              = true -- Whether the swep will force the user to see the viewmodel's hands
SWEP.Kind                 = WEAPON_EQUIP1 -- Kind specifies what weapon_ttt category it falls into
SWEP.AutoSpawnable         = false -- Whether the swep will spawn upon map gen (override as false if EQUIP1/2)
SWEP.AmmoEnt               = "item_ammo_smg1_ttt" -- Which entity you pick up to fill your clips
SWEP.CanBuy                = {ROLE_TRAITOR} -- Which roles can purchase this swep (table)
SWEP.InLoadoutFor          = nil -- Which roles gain this weapon upon round start (table)
SWEP.LimitedStock          = true -- If true only one can be bought per round
SWEP.AllowDrop             = true -- Is the player able to drop the swep
SWEP.IsSilent              = false -- If true, the killed player will not scream upon death
SWEP.NoSights              = false -- If true, the swep has no ironsights capability (no Secondary fire if ironsights?)
SWEP.HeadshotMultiplier    = 50 -- Multiply the headshot damage by this much
SWEP.DeploySpeed           = 0.2 -- Lower the slower
SWEP.IronSightsPos         = Vector(-2, -5, 0) -- Moves the Viewmodel by this vector when using ironsights
SWEP.IronSightsAng         = Vector(-2, 0, 0) -- Rotates the Viewmodel by this angle when using ironsights


-- REDUNDANT SETTINGS (read them because they may still be appicable) --

-- Don't set SWEP.WeaponID. Only the standard TTT weapons can have it. Custom
-- SWEPs do not need it for anything.
--	SWEP.WeaponID = nil
