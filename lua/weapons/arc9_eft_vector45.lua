AddCSLuaFile()

SWEP.Base = "arc9_base"
SWEP.Spawnable = true
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_smg")
-- SWEP.SubCategory = "_Not for your eyesss"
SWEP.Credits = { 
    [ARC9:GetPhrase("eft_trivia_author") .. "1"] = "Darsu", 
    [ARC9:GetPhrase("eft_trivia_assets") .. "2"] = "Battlestate Games LTD", 
}

SWEP.PrintName = "KRISS Vector .45"
SWEP.Class = ARC9:GetPhrase("eft_class_weapon_smg")
SWEP.Trivia = {
    [ARC9:GetPhrase("eft_trivia_manuf") .. "1"] = "Transformational Defense Industries, Inc.",
    [ARC9:GetPhrase("eft_trivia_cal") .. "2"] = "11.43x23mm ACP (.45 ACP)",
    [ARC9:GetPhrase("eft_trivia_act") .. "3"] = ARC9:GetPhrase("eft_trivia_act_blow"),
    [ARC9:GetPhrase("eft_trivia_country") .. "4"] = ARC9:GetPhrase("eft_trivia_country_usa"),
    [ARC9:GetPhrase("eft_trivia_year") .. "5"] = "2006"
}

SWEP.Description = [[The KRISS Vector SMG is the ideal choice for law enforcement and military seeking a controllable and compact weapon system for close quarter combat environments. The low bore axis and Super V recoil mitigation system allow for controllable shots when firing in full-automatic, or fast semi-automatic follow up shots. Compatible with Glock .45 ACP magazines.]]


-- SWEP.StandardPresets = {}

SWEP.BarrelLength = 15
SWEP.Slot = 2
SWEP.WorldModel = "models/weapons/w_smg_ump45.mdl"
SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_vector_45.mdl"
SWEP.ViewModelFOVBase = 65
SWEP.MirrorVMWM = true
SWEP.DefaultBodygroups = "00000000000000"


------------------------- [[[           STATS            ]]] -------------------------

-- default pst fmj

SWEP.DamageMax = 72 * 0.5
SWEP.DamageMin = 47.93 * 0.5
SWEP.PhysBulletMuzzleVelocity = 340  /0.0254

SWEP.RangeMin = 10
SWEP.RangeMax = 1000 /0.0254 * 1

SWEP.Penetration =      25 *2.54/100/0.0254
SWEP.PenetrationDelta = 36/100
SWEP.ArmorPiercing =    36/100
SWEP.RicochetChance =   6.5/100

SWEP.DamageLookupTable = {
    {   10/0.0254 * 1, 
    72 * 0.5     },

    {   100 /0.0254 * 1, 
    66.36 * 0.5     },

    {   200 /0.0254 * 1, 
    62.8 * 0.5     },

    {   300 /0.0254 * 1, 
    60 * 0.5     },

    {   400 /0.0254 * 1, 
    57.63 * 0.5     },

    {   500 /0.0254 * 1, 
    55.53 * 0.5     },

    {   600 /0.0254 * 1, 
    53.66 * 0.5     },

    {   700 /0.0254 * 1, 
    51.97 *0.5     },

    {   800 /0.0254 * 1, 
    50.47 * 0.5     },

    {   900 /0.0254 * 1, 
    49.12* 0.5     },

    {   1000 /0.0254 * 1, 
    47.93 * 0.5     },
}



--          Spread
SWEP.Spread = 8.594 * ARC9.MOAToAcc
SWEP.SpreadAddHipFire = 0.02
SWEP.SpreadMultMove = 1.5
SWEP.SpreadAddMove = 0.015


--          Recoil
-- touch these

SWEP.Recoil = 0.6 -- general multiplier of main recoil

SWEP.RecoilUp   = 1.2   -- up recoil
SWEP.RecoilSide = 0.7 -- sideways recoil
SWEP.RecoilRandomUp   = 0.75 -- random up/down
SWEP.RecoilRandomSide = 1.0   -- random left/right

SWEP.RecoilAutoControl = 7 -- autocompenstaion, could be cool if set to high but it also affects main recoil

-- visual recoil   aka visrec
SWEP.VisualRecoil = 1 -- general multiplier for it

local EFT_VisualRecoilUp_BURST_SEMI   = 0.15   -- up/down tilt when semi/bursts
SWEP.VisualRecoilUp                   = 0.8   --   when fullautoing
local EFT_VisualRecoilSide_BURST_SEMI = 0.003 -- left/right tilt when semi/burst
SWEP.VisualRecoilSide                 = 0.09   --   when fullautoing
SWEP.VisualRecoilRoll = 5 -- roll tilt, a visual thing

SWEP.VisualRecoilPunch = 1 -- How far back visrec moves the gun
SWEP.VisualRecoilPunchSights = 11 -- same but in sights only

SWEP.VisualRecoilDampingConst = 220  -- spring settings, this is speed of visrec
SWEP.VisualRecoilSpringPunchDamping = 7 -- the less this is the more wobbly gun moves
SWEP.VisualRecoilSpringMagnitude = 0.5 -- some third element of spring, high values make gun shake asf on low fps

SWEP.VisualRecoilPositionBumpUpHipFire = 0.1 -- gun will go down each shot by this value
SWEP.VisualRecoilPositionBumpUp = -0.15 -- same but in sights
SWEP.VisualRecoilPositionBumpUpRTScope = 0.05 -- same but in rt scopes, you probably should keep it same as sight value, i guess it doesn't matter anymore after recoil update

SWEP.VisualRecoilCenter = Vector(2, 14, 0) -- ugh, i dont now what to set it too, but probably it should be diffferent on each gun
local EFT_ShotsToSwitchToFullAutoBehaviur = 2 -- how many shots for switch to fullauto stats from semi/burst, + 2 shots afterwards are lerping. you probably should not touch this but ok

SWEP.RecoilKick = 0.145 -- camera roll each shot + makes camera go more up when fullautoing

-- dont touch this i guess

SWEP.RecoilMultHipFire = 1
SWEP.RecoilMultCrouch = 0.75
SWEP.RecoilUpMultFirstShot = 0.85
SWEP.RecoilUpMultRecoil = 1.2

SWEP.RecoilDissipationRate = 5
SWEP.RecoilAutoControlMultHipFire = 0.75
SWEP.RecoilAutoControl_DontTryToReturnBack = true
SWEP.RecoilResetTime = 0.03
SWEP.RecoilFullResetTime = 0.2

SWEP.UseVisualRecoil = true 
SWEP.VisualRecoilMultHipFire = 1
SWEP.VisualRecoilMultSights = 1
SWEP.VisualRecoilMultCrouch = 0.75

SWEP.VisualRecoilDampingConstMultFirstShot = 3

-- SWEP.VisualRecoilThinkFunc = function(springconstant, VisualRecoilSpringMagnitude, PUNCH_DAMPING, recamount)
--     return springconstant, VisualRecoilSpringMagnitude, PUNCH_DAMPING
-- end

SWEP.VisualRecoilDoingFunc = function(up, side, roll, punch, recamount, self)
    local fullauto = math.Clamp(recamount - EFT_ShotsToSwitchToFullAutoBehaviur, 0, 3) * 0.33333333
    up = Lerp(fullauto, EFT_VisualRecoilUp_BURST_SEMI, up)
    side = Lerp(fullauto, EFT_VisualRecoilSide_BURST_SEMI, side)

    if recamount < 2 then
        if self:GetSightAmount() < 0.2 then up = 1 end -- only for visual when hipfiring
    end

    return up, side, roll, punch
end

SWEP.RecoilKickAffectPitch = true
SWEP.RecoilKickDamping = 10



--          Heating

SWEP.Malfunction = true 
SWEP.MalfunctionNeverLastShoot = false 
SWEP.MalfunctionMeanShotsToFail = 1100
SWEP.MalfunctionMeanShotsToFailMultHot = 0.2
SWEP.Overheat = true
SWEP.HeatCapacity = 160
SWEP.HeatDissipation = 2.5
SWEP.HeatPerShot = 1
SWEP.HeatLockout = false


--          Firemodes

SWEP.RPM = 1100
-- SWEP.Firemodes = { { Mode = -1 }, { Mode = 1 } } -- auto, semi
SWEP.Firemodes = {
    { Mode = -1, PoseParam = 3},
    { Mode = 1, PoseParam = 1 },
    { Mode = 2, PoseParam = 2},
}

--          Speed

SWEP.AimDownSightsTime = 0.33
SWEP.SprintToFireTime = 0.35

SWEP.SpeedMult = 0.95
SWEP.SpeedMultSights = 0.5
SWEP.SpeedMultShooting = 0.7
SWEP.SpeedMultMelee = 0.75
SWEP.SpeedMultCrouch = 1
SWEP.SpeedMultBlindFire = 1


--          Other

SWEP.FreeAimRadius = 2
SWEP.FreeAimRadiusSights = 0

SWEP.Sway = 1
SWEP.SwayMove = 0.5
SWEP.SwayMidAir = 10
SWEP.SwayMultCrouch = 0.75
SWEP.SwayMultHipFire = 0.2
SWEP.SwayMultSights = 0.25
SWEP.HoldBreathTime = 40
SWEP.RestoreBreathTime = 30
SWEP.BreathInSound = false 
SWEP.BreathOutSound = false
SWEP.BreathRunOutSound = "arc9_eft_shared/bear3_breath_sprint.ogg"

--          Generic stats

SWEP.Ammo = "pistol"
SWEP.ChamberSize = 0 -- no mag
SWEP.ClipSize = 1 -- actual chamber (no mag)
SWEP.SupplyLimit = 4
SWEP.SecondarySupplyLimit = 4
SWEP.ReloadInSights = true
SWEP.DropMagazineSounds = {}
SWEP.DropMagazineAmount = 1
SWEP.DropMagazineTime = 0.5
SWEP.DropMagazineQCA = 4
SWEP.DropMagazinePos = Vector(0, 0, 0)
SWEP.DropMagazineAng = Angle(-180, 180-20, 0)
SWEP.DropMagazineVelocity = Vector(0, -30, 0)
SWEP.Bash = false
SWEP.PrimaryBash = false
SWEP.TracerNum = 0
SWEP.TracerColor = Color(255, 225, 200)



------------------------- [[[           Other            ]]] -------------------------

--          Positions and offsets

SWEP.IronSights = {
    Pos = Vector(-4.28, -7.5, 1.46),
    Ang = Angle(0, 0.05, 0),
    Midpoint = { Pos = Vector(-1, 0, 8), Ang = Angle(0, 0, -145) },
    Magnification = 1.1,
    ViewModelFOV = 54
}

SWEP.ActivePos = Vector(-0.7, -4, -0.37)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintAng = Angle(50, 10, -45)
SWEP.SprintPos = Vector(4, -5, 0)

SWEP.NearWallAng = Angle(0, 55, 0)
SWEP.NearWallPos = Vector(0, 0, -15)

SWEP.CrouchPos = Vector(-0.7, -3.8, .35)
SWEP.CrouchAng = Angle(0, 0, -1)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(16, 25, 5.0)
SWEP.CustomizeSnapshotFOV = 95
SWEP.CustomizeRotateAnchor = Vector(15.5, -4.28, -5.23)


--          Third person stuff

SWEP.HoldType = "rpg"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "rpg"
SWEP.HoldTypeSights = "rpg"
SWEP.HoldTypeCustomize = "physgun"

SWEP.WorldModelOffset = {
    Pos = Vector(-8, 5.4, -4.5),
    Ang = Angle(-7, 0, 180),
    TPIKPos = Vector(-6, 5, -4), -- rpg
    TPIKAng = Angle(-11.5, 0, 180),
    Scale = 1
}

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN


--          Effects

SWEP.CamQCA = 3
SWEP.CamOffsetAng = Angle(0, 0, 90)
SWEP.CamQCA_Mult = 0.3
SWEP.CamQCA_Mult_ADS = 0.05

SWEP.MuzzleParticle = "muzzleflash_smg"

SWEP.CaseEffectQCA = 2
SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/45acp.mdl"
SWEP.ShellScale = 1
SWEP.ShellCorrectAng = Angle(0, 180, 180)
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)


SWEP.BulletBones = {
    [1] = "patron_in_weapon",
    [2] = "patron_in_mag1",
    [3] = "patron_in_mag2",
    [4] = "patron_in_mag3",

}

------------------------- [[[           Sounds            ]]] -------------------------

local path = "weapons/darsu_eft/vector/"

SWEP.ShootPitchVariation = 0
SWEP.DistantShootVolume = 0.05
SWEP.DistantShootVolumeActual = 0.05

SWEP.ShootSound = { path .. "fire_new/vector_45_close1.ogg", path .. "fire_new/vector_45_close2.ogg", path .. "fire_new/vector_45_close3.ogg", path .. "fire_new/vector_45_close4.ogg" }
SWEP.LayerSound = path .. "fire_new/vector_45_close_tail.ogg"

SWEP.ShootSoundSilenced = { path .. "fire_new/vector_45_silenced_close1.ogg", path .. "fire_new/vector_45_silenced_close2.ogg", path .. "fire_new/vector_45_silenced_close3.ogg", path .. "fire_new/vector_45_silenced_close4.ogg" }
SWEP.LayerSoundSilenced = path .. "fire_new/vector_45_silenced_close_tail.ogg"

SWEP.ShootSoundIndoor = { path .. "fire_new/vector_45_indoor_close1.ogg", path .. "fire_new/vector_45_indoor_close2.ogg", path .. "fire_new/vector_45_indoor_close3.ogg", path .. "fire_new/vector_45_indoor_close4.ogg" }
SWEP.LayerSoundIndoor = path .. "fire_new/vector_45_indoor_close_tail.ogg"

SWEP.ShootSoundSilencedIndoor = { path .. "fire_new/vector_45_indoor_silenced_close1.ogg", path .. "fire_new/vector_45_indoor_silenced_close2.ogg", path .. "fire_new/vector_45_indoor_silenced_close3.ogg", path .. "fire_new/vector_45_indoor_silenced_close4.ogg" }
SWEP.LayerSoundSilencedIndoor = path .. "fire_new/vector_45_indoor_silenced_close_tail.ogg"

SWEP.DistantShootSound = { path .. "fire_new/vector_45_distant1.ogg", path .. "fire_new/vector_45_distant2.ogg" }
SWEP.DistantShootSoundSilenced = { path .. "fire_new/vector_45_silenced_distant1.ogg", path .. "fire_new/vector_45_silenced_distant2.ogg" }
SWEP.DistantShootSoundIndoor = { path .. "fire_new/vector_45_indoor_distant1.ogg", path .. "fire_new/vector_45_indoor_distant2.ogg" }
SWEP.DistantShootSoundSilencedIndoor = { path .. "fire_new/vector_45_indoor_silenced_distant1.ogg", path .. "fire_new/vector_45_indoor_silenced_distant2.ogg" }


SWEP.FiremodeSound = "" -- we will have own in sound tables
SWEP.ToggleAttSound = "" -- we will have own in sound tables
SWEP.DryFireSound = "" -- we will have own in sound tables


SWEP.EnterSightsSound = ARC9EFT.ADSSMG
SWEP.ExitSightsSound = ARC9EFT.ADSSMG


SWEP.SuppressEmptySuffix = true 

------------------------- [[[           Hooks & functions            ]]] -------------------------



------------------------- [[[           Animations            ]]] -------------------------

SWEP.ReloadHideBoneTables = {
    [1] = {
        "mod_magazine",
        "patron_in_mag1",
        "patron_in_mag2",
        "patron_in_mag3",
    },
}


SWEP.Hook_TranslateAnimation = function(swep, anim)
    local elements = swep:GetElements()
    if !IsFirstTimePredicted() then return end

    local ending = ""
    local mag = ""
    local nomag = false 

    if elements["eft_mag_g17_std_17"] or elements["eft_mag_g19x_std_21"] or elements["eft_mag_slickers"] or elements["eft_vector_mag_13"] then mag = "_0"
    elseif elements["eft_mag_g17_gl9_21"] or elements["eft_mag_g19x"] then mag = "_1"
    elseif elements["eft_mag_g17_bigstick_33"] or elements["eft_mag_bigstick24"] or elements["eft_mag_bigstick31"] or elements["eft_vector_mag_30"]  then mag = "_2"
    elseif elements["eft_mag_g17_sgmt_50"] then mag = "_3"
    else nomag = true end
    
    local empty = swep:Clip1() == 0

    -- 0 looking
    -- 1 mag check  (!nomag)
    -- 2 slide checking  (!empty)
    
    if anim == "inspect" or anim == "inspect_empty" then
        -- if empty then anim = "inspect_empty" end

        swep.EFTInspectnum = (swep.EFTInspectnum or 0) + 1
        local rand = swep.EFTInspectnum
        if rand == 3 then swep.EFTInspectnum = 0 rand = 0 end
        
        if rand == 2 and nomag then rand = 0 swep.EFTInspectnum = 0 end
        
        if rand == 2 and ARC9EFTBASE and SERVER then
            net.Start("arc9eftmagcheck")
            net.WriteBool(!elements["eft_mag_g17_sgmt_50"] and !elements["eft_mag_g17_gl9_21"]) -- accurate or not based on mag type
            net.WriteUInt(math.min(swep:Clip1(), swep:GetCapacity()), 9)
            net.WriteUInt(swep:GetCapacity(), 9)
            net.Send(swep:GetOwner())
            rand = rand .. mag
        end

        return anim .. rand
    end
    
    if anim == "reload" or anim == "reload_empty" then
        if nomag then return "reload" end
        if empty then return "reload_empty" .. mag end
        return anim .. mag
    end

    if anim == "fix" then
        local rand = math.Truncate(util.SharedRandom("hi", 1, 4.99))
        -- 0 = misfire, 1 = eject, 2 = feed, 3 = bolt, 4 = bolt 
        if ARC9EFTBASE and SERVER then
            timer.Simple(0.25, function()
                if IsValid(swep) and IsValid(swep:GetOwner()) then
                    net.Start("arc9eftjam")
                    net.WriteUInt(rand, 3)
                    net.Send(swep:GetOwner())
                end
            end)
        end
        
        return "jam" .. rand
    end
end

    
    local randspin = {"arc9_eft_shared/weapon_generic_rifle_spin1.ogg","arc9_eft_shared/weapon_generic_rifle_spin2.ogg","arc9_eft_shared/weapon_generic_rifle_spin3.ogg","arc9_eft_shared/weapon_generic_rifle_spin4.ogg","arc9_eft_shared/weapon_generic_rifle_spin5.ogg","arc9_eft_shared/weapon_generic_rifle_spin6.ogg","arc9_eft_shared/weapon_generic_rifle_spin7.ogg","arc9_eft_shared/weapon_generic_rifle_spin8.ogg","arc9_eft_shared/weapon_generic_rifle_spin9.ogg","arc9_eft_shared/weapon_generic_rifle_spin10.ogg"}
    local slidelock = {"arc9_eft_shared/pistol_jam_slidelock_try1.ogg", "arc9_eft_shared/pistol_jam_slidelock_try2.ogg", "arc9_eft_shared/pistol_jam_slidelock_try3.ogg"}
    local slidelockgrab = {"arc9_eft_shared/pistol_jam_slidelock_grab1.ogg", "arc9_eft_shared/pistol_jam_slidelock_grab2.ogg", "arc9_eft_shared/pistol_jam_slidelock_grab3.ogg"}
    local pouchin = {"arc9_eft_shared/generic_mag_pouch_in1.ogg","arc9_eft_shared/generic_mag_pouch_in2.ogg","arc9_eft_shared/generic_mag_pouch_in3.ogg","arc9_eft_shared/generic_mag_pouch_in4.ogg","arc9_eft_shared/generic_mag_pouch_in5.ogg","arc9_eft_shared/generic_mag_pouch_in6.ogg","arc9_eft_shared/generic_mag_pouch_in7.ogg"}
    local pouchout = {"arc9_eft_shared/generic_mag_pouch_out1.ogg","arc9_eft_shared/generic_mag_pouch_out2.ogg","arc9_eft_shared/generic_mag_pouch_out3.ogg","arc9_eft_shared/generic_mag_pouch_out4.ogg","arc9_eft_shared/generic_mag_pouch_out5.ogg","arc9_eft_shared/generic_mag_pouch_out6.ogg","arc9_eft_shared/generic_mag_pouch_out7.ogg"}
    
    local rst_single = {
        { s = "arc9_eft_shared/weap_handoff.ogg", t = 0.03},
        { s = path .. "vector_bolt_handle_grab.ogg", t = 0.47 },
        { s = path .. "vector_bolt_out.ogg", t = 0.62 },
        { s = path .. "vector_bolt_lock_button.ogg", t = 1.06 },
        { s = randspin, t = 1.5 },
        { s = randspin, t = 1.67 },
        { s = "arc9_eft_shared/weap_round_pullout.ogg", t = 1.85},
        { s =  path .. "generic_jam_shell_ remove_medium1.ogg", t = 2.9  },
        { s = randspin, t = 3.61 },
        { s = "arc9_eft_shared/weap_handoff.ogg", t = 3.74},
        { s = path .. "vector_bolt_handle_grab.ogg", t = 4 },
        { s =  path .. "vector_bolt_in.ogg", t = 4.24  },
        { s = path .. "p90_bolt_handle_bounce.ogg", t = 4.38 },
        { s = randspin, t = 4.5 },
    }
    

    local rst_def = {
        { s = randspin, t = 0.24 },    
        { s =  path .. "vector_magrelease_button.ogg", t = 0.57 },
        { s =  path .. "vector_mag_out.ogg", t = 0.81 },
        { s = randspin, t = 1.38 },    
        { s = pouchin, t = 1.57 },
        { s = pouchout, t = 1.91 },
        { s =  path .. "vector_mag_in.ogg", t = 2.69 - 0.25 },
        { s = randspin, t = 2.93},
    }
    local rst_empty = {
        { s = randspin, t = 0.1 },    
        { s =  path .. "vector_magrelease_button.ogg", t = 0.31 },
        { s =  path .. "vector_mag_out.ogg", t = 0.42 },
        { s = pouchout, t = 1.02 },
        { s = randspin, t = 1.3},
        { s =  path .. "vector_mag_in.ogg", t = 1.77 - 0.25 },
        { s = randspin, t = 1.85},
        { s =  path .. "vector_bolt_catch.ogg", t = 2.38 },
        { s = randspin, t = 2.64 },
        {hide = 0, t = 0},
        {hide = 1, t = 0.5},
        {hide = 0, t = 1.0}
    }
    local rst_long = {
        { s = randspin, t = 0.24 },    
        { s =  path .. "vector_magrelease_button.ogg", t = 0.57 },
        { s =  path .. "vector_mag_out.ogg", t = 0.81 },
        { s = randspin, t = 1.38 },    
        { s = pouchin, t = 1.57 },
        { s = pouchout, t = 1.91+0.1 },
        { s =  path .. "vector_mag_in.ogg", t = 2.69+0.12 - 0.25 },
        { s = randspin, t = 2.93+0.12},
    }
    local rst_emptylong = {
        { s = randspin, t = 0.05 },    
        { s =  path .. "vector_magrelease_button.ogg", t = 0.34 },
        { s =  path .. "vector_mag_out.ogg", t = 0.5 },
        { s = pouchout, t = 1.1+0.1 },
        { s = randspin, t = 1.3+0.21},
        { s =  path .. "vector_mag_in.ogg", t = 1.72+0.21 - 0.25 },
        { s = randspin, t = 2.01+0.21},
        { s =  path .. "vector_bolt_catch.ogg", t = 2.31+0.21 },
        { s = randspin, t = 2.64+0.21 },
        {hide = 0, t = 0},
        {hide = 1, t = 0.5},
        {hide = 0, t = 1.0}
    }
    local rst_drum = {
        { s = randspin, t = 0.24 },    
        { s =  path .. "vector_magrelease_button.ogg", t = 0.57 },
        { s =  path .. "vector_mag_out.ogg", t = 0.81 },
        { s = randspin, t = 1.38 },    
        { s = pouchin, t = 1.57 },
        { s = pouchout, t = 1.91+0.15 },
        { s =  path .. "vector_mag_in.ogg", t = 2.69+0.32 - 0.25 },
        { s = randspin, t = 2.93+0.32},
    }
    local rst_emptydrum = {
        { s = randspin, t = 0.05 },    
        { s =  path .. "vector_magrelease_button.ogg", t = 0.34 },
        { s =  path .. "vector_mag_out.ogg", t = 0.5 },
        { s = pouchout, t = 1.1+0.15 },
        { s = randspin, t = 1.3+0.36},
        { s =  path .. "vector_mag_in.ogg", t = 1.72+0.36 - 0.25 },
        { s = randspin, t = 2.01+0.36},
        { s =  path .. "vector_bolt_catch.ogg", t = 2.31+0.36 },
        { s = randspin, t = 2.64+0.36 },
        {hide = 0, t = 0},
        {hide = 1, t = 0.5},
        {hide = 0, t = 1.0}
    }
    

    local rst_magcheck = {
        { s = "arc9_eft_shared/weap_handoff.ogg", t = 0.03},
        { s =  path .. "vector_magrelease_button.ogg", t = 0.59 },
        { s =  path .. "vector_mag_out.ogg", t = 0.81 },
        { s = randspin, t = 1.4 },
        { s =  path .. "vector_mag_in.ogg", t = 2.79 - 0.25 },
        { s = randspin, t = 3.1},
    }
    local rik_magcheck = {
        { t = 0, lhik = 1 },
        { t = 0.2, lhik = 0 },
        { t = 0.9, lhik = 0 },
        { t = 1, lhik = 1 },
    }
    local rik_look = {
        { t = 0, lhik = 1 },
        -- { t = 0.38, lhik = 1 },
        -- { t = 0.51, lhik = 0 },
        -- { t = 0.8, lhik = 0 },
        { t = 1, lhik = 1 },
    }
    local rik_single = {
        { t = 0, lhik = 1 },
        { t = 0.09, lhik = 0 },
        { t = 0.88, lhik = 0 },
        { t = 0.98, lhik = 1 },
        { t = 1, lhik = 1 },
    }
    local rik_def = {
        { t = 0, lhik = 1 },
        { t = 0.18, lhik = 0 },
        { t = 0.87, lhik = 0 },
        { t = 1, lhik = 1 },
    }
    local rik_long = {
        { t = 0, lhik = 1 },
        { t = 0.15, lhik = 0 },
        { t = 0.88, lhik = 0 },
        { t = 1, lhik = 1 },
    }
    local rik_drum = {
        { t = 0, lhik = 1 },
        { t = 0.13, lhik = 0 },
        { t = 0.89, lhik = 0 },
        { t = 1, lhik = 1 },
    }
    local rik_empty = {
        { t = 0, lhik = 1 },
        { t = 0.1, lhik = 0 },
        { t = 0.85, lhik = 0 },
        { t = 0.96, lhik = 1 },
        { t = 1, lhik = 1 },
    }
    local rik_emptylong = {
        { t = 0, lhik = 1 },
        { t = 0.1, lhik = 0 },
        { t = 0.84, lhik = 0 },
        { t = 0.98, lhik = 1 },
        { t = 1, lhik = 1 },
    }
    local rik_emptydrum = {
        { t = 0, lhik = 1 },
        { t = 0.09, lhik = 0 },
        { t = 0.86, lhik = 0 },
        { t = 0.97, lhik = 1 },
        { t = 1, lhik = 1 },
    }

    SWEP.Animations = {
        ["idle"] = {
            Source = "idle",
            -- Time = 1000, -- reset when done soundstables!!!!!!!!
        },
    
        ["ready"] = {
            Source = {"ready0", "ready1", "ready2"},
            EventTable = {
                { s = "arc9_eft_shared/weap_in.ogg", t = 0.05  },
                { s = path .. "vector_bolt_handle_grab.ogg", t = 0.5  },
                { s = path .. "vector_bolt_out.ogg", t = 0.75 },
                { s = path .. "vector_bolt_in.ogg", t = 0.92 },
                { s = path .. "p90_bolt_handle_bounce.ogg", t = 1.02 },
            },
            IKTimeLine = {
                { t = 0, lhik = 1 },
                { t = 0.001, lhik = 0 },
                { t = 0.7, lhik = 0 },
                { t = 0.87, lhik = 1 },
                { t = 1, lhik = 1 },
            },
        },

        ["draw"] = {
            Source = "draw",
            EventTable = {
                { s = "arc9_eft_shared/weap_in.ogg", t = 0.05 },
            }
        },
        ["draw_empty"] = {
            Source = "draw_empty",
            EventTable = {
                { s = "arc9_eft_shared/weap_in.ogg", t = 0.05 },
            }
        },

        ["holster"] = {
            Source = "holster",
            EventTable = {
                { s =  "arc9_eft_shared/weap_out.ogg", t = 0 },
            }
        },
        ["holster_empty"] = {
            Source = "holster_empty",
            EventTable = {
                { s =  "arc9_eft_shared/weap_out.ogg", t = 0 },
            }
        },
    
        ["fire"] = {
            Source = "fire",
            EventTable = {
                { s = path .. "mp7_hammer.ogg", t = 0 },
            }
        },
        ["fire_empty"] = {
            Source = "fire_last",
            EventTable = {
                { s = path .. "mp7_hammer.ogg", t = 0 },
            }
        },
        ["dryfire"] = {
            Source = "fire_dry",
            EventTable = {
                { s = path .. "p90_trigger_empty.ogg", t = 0 },
            }
        },
        ["dryfire_empty"] = {
            Source = "fire_dry_empty",
            EventTable = {
                { s = path .. "p90_trigger_empty.ogg", t = 0 },
            }
        },
    
        ["reload"] = {
            Source = "reload_single",
            MinProgress = 0.925,
            FireASAP = true,
            EventTable = rst_single,
            IKTimeLine = rik_single
        },
    
        ["reload_0"] = {
            Source = "reload0",
            MinProgress = 0.925,
            MagSwapTime = 0.8,
            FireASAP = true,
            EventTable = rst_def,
            IKTimeLine = rik_def
        },
        ["reload_1"] = {
            Source = "reload1",
            MinProgress = 0.925,
            MagSwapTime = 0.8,
            FireASAP = true,
            EventTable = rst_def,
            IKTimeLine = rik_def
        },
        ["reload_2"] = {
            Source = "reload2",
            MinProgress = 0.925,
            MagSwapTime = 0.8,
            FireASAP = true,
            EventTable = rst_long,
            IKTimeLine = rik_long
        },
        ["reload_3"] = {
            Source = "reload3",
            MinProgress = 0.925,
            MagSwapTime = 0.8,
            FireASAP = true,
            EventTable = rst_drum,
            IKTimeLine = rik_drum
        },
    
        ["reload_empty_0"] = {
            Source = { "reload_empty0_0","reload_empty0_0", "reload_empty0_1", "reload_empty0_2" }, 
            MinProgress = 0.925,
            MagSwapTime = 1.5,
            FireASAP = true,
            EventTable = rst_empty,
            IKTimeLine = rik_empty
        },
        ["reload_empty_1"] = {
            Source = { "reload_empty1_0","reload_empty1_0", "reload_empty1_1" }, 
            MinProgress = 0.925,
            MagSwapTime = 1.5,
            FireASAP = true,
            EventTable = rst_empty,
            IKTimeLine = rik_empty
        },
        ["reload_empty_2"] = {
            Source = { "reload_empty2_0","reload_empty2_0", "reload_empty2_1", "reload_empty2_2" }, 
            MinProgress = 0.925,
            MagSwapTime = 1.75,
            FireASAP = true,
            EventTable = rst_empty,
            IKTimeLine = rik_empty
        },
        ["reload_empty_3"] = {
            Source = { "reload_empty3_0","reload_empty3_0", "reload_empty3_1", "reload_empty3_2" }, 
            MinProgress = 0.925,
            MagSwapTime = 2,
            FireASAP = true,
            EventTable = rst_emptydrum,
            IKTimeLine = rik_emptydrum
        },
    
        ["toggle"] = {
            Source = "mod_switch",
            EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
        },
        ["switchsights"] = {
            Source = "mod_switch",
            EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
        },
        ["toggle_empty"] = {
            Source = "mod_switch_empty",
            EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
        },
        ["switchsights_empty"] = {
            Source = "mod_switch_empty",
            EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
        },
    
    
    
        
        ["jam1"] = {
            Source = "jam_shell",
            EventTable = {
                { s = randspin, t = 0.08 },
                { s = randspin, t = 0.72 },
                { s = randspin, t = 1.14 },

                { s =  path .. "vector_bolt_handle_grab.ogg", t = 1.44 },
                { s =  path .. "vector_bolt_out_slow.ogg", t = 1.73 },
                { s =  path .. "longweapon_jam_rattle5.ogg", t = 2.28 },
                { s =  path .. "longweapon_jam_rattle1.ogg", t = 2.68 },
                { s =  path .. "generic_jam_shell_ remove_medium1.ogg", t = 2.74 },
                { s =  path .. "vector_bolt_in.ogg", t = 3.04 },
                { s = path .. "p90_bolt_handle_bounce.ogg", t = 3.18 },
                { s = randspin, t = 3.29 },
                { s = ARC9EFT.Shells9mm, t = 3.45 },
            },
            IKTimeLine = {
                { t = 0, lhik = 1 },
                { t = 0.29, lhik = 1 },
                { t = 0.38, lhik = 0 },
                { t = 0.81, lhik = 0 },
                { t = 0.92, lhik = 1 },
                { t = 1, lhik = 1 },
            },
            -- EjectAt = 1.97
        },        
        
        ["jam3"] = {
            Source = "jam_hardjam",
            EventTable = {
                { s = randspin, t = 0.08 },
                { s = randspin, t = 0.72 },
                { s = randspin, t = 1.14 },

                { s =  path .. "vector_bolt_handle_grab.ogg", t = 1.46 },
                { s = slidelockgrab, t = 1.94 },
                { s = randspin, t = 2.6 },
                { s =  path .. "vector_bolt_handle_grab.ogg", t = 3.27 },
                { s = slidelockgrab, t = 3.58 },
                { s = slidelockgrab, t = 4.03 },
                { s =  path .. "vector_bolt_out_slow.ogg", t = 4.4 },
                { s =  path .. "pistol_jam_rattle4.ogg", t = 4.5 },
                { s =  path .. "vector_bolt_in_slow.ogg", t = 4.9 },
                { s = path .. "p90_bolt_handle_bounce.ogg", t = 5.01 },
                { s = randspin, t = 5.05 },
            },
            IKTimeLine = {
                { t = 0, lhik = 1 },
                { t = 0.18, lhik = 1 },
                { t = 0.25, lhik = 0 },
                { t = 0.9, lhik = 0 },
                { t = 0.96, lhik = 1 },
            },
            EjectAt = 4.5
        },      
        
        ["jam2"] = {
            Source = "jam_feed",
            EventTable = {
                { s = randspin, t = 0.08 },
                { s = randspin, t = 0.72 },
                { s = randspin, t = 1.14 },

                { s =  path .. "vector_bolt_handle_grab.ogg", t = 1.36 },
                { s = slidelockgrab, t = 1.77 },
                { s = slidelockgrab, t = 2.19 },
                { s = randspin, t = 2.51 },
                { s =  path .. "longweapon_jam_rattle1.ogg", t = 2.72 },
                { s =  path .. "generic_jam_shell_ remove_medium1.ogg", t = 3.12 },
                { s = randspin, t = 3.55 },
                { s =  path .. "vector_bolt_in.ogg", t = 3.96 },
                { s = path .. "p90_bolt_handle_bounce.ogg", t = 4.1 },
                { s = randspin, t = 4.25 },
                { s = ARC9EFT.Shells9mm, t = 4 },
            },
            IKTimeLine = {
                { t = 0, lhik = 1 },
                { t = 0.21, lhik = 1 },
                { t = 0.28, lhik = 0 },
                { t = 0.85, lhik = 0 },
                { t = 0.92, lhik = 1 },
                { t = 1, lhik = 1 },
            },
            -- EjectAt = 2.52
        },        
        
        ["jam4"] = {
            Source = "jam_softjam",
            EventTable = {
                { s = randspin, t = 0.08 },
                { s = randspin, t = 0.72 },
                { s = randspin, t = 1.14 },

                { s =  path .. "vector_bolt_handle_grab.ogg", t = 1.43 },
                { s = slidelockgrab, t = 1.77 },
                { s = slidelockgrab, t = 2.2 },
                { s =  path .. "pistol_jam_rattle4.ogg", t = 2.6 },
                { s =  path .. "vector_bolt_out_slow.ogg", t = 2.62 },
                { s =  path .. "vector_bolt_in.ogg", t = 3.06 },
                { s = path .. "p90_bolt_handle_bounce.ogg", t = 3.21 },
                { s = randspin, t = 3.25 },
            },
            IKTimeLine = {
                { t = 0, lhik = 1 },
                { t = 0.28, lhik = 1 },
                { t = 0.36, lhik = 0 },
                { t = 0.84, lhik = 0 },
                { t = 0.96, lhik = 1 },
                { t = 1, lhik = 1 },
            },
            EjectAt = 2.6
        },
    
        ["inspect"] = { -- TO STUPID ARK NINE SEE WE HAVE INSPECT
            Source = "idle",
        },
        ["inspect_empty"] = { -- TO STUPID ARK NINE SEE WE HAVE INSPECT
            Source = "idle_empty",
        },
    
        ["inspect1"] = {
            Source = "look",
            EventTable = {
                { s = randspin, t = 0.13 },
                { s = "arc9_eft_shared/weapon_generic_pistol_spin4.ogg", t = 1.54 },
                { s = randspin, t = 2.77  },
            },
            IKTimeLine = rik_look
        },
        ["inspect_empty"] = {
            Source = "look_empty",
            EventTable = {
                { s = randspin, t = 0.13 },
                { s = "arc9_eft_shared/weapon_generic_pistol_spin4.ogg", t = 1.54 },
                { s = randspin, t = 2.77  },
            },
            IKTimeLine = rik_look
        },
    

        ["inspect2_0"] = {
            Source = "check_0",
            EventTable = rst_magcheck,
            IKTimeLine = rik_magcheck
        },
        ["inspect_empty2_0"] = {
            Source = "check_0_empty",
            EventTable = rst_magcheck,
            IKTimeLine = rik_magcheck
        },
        ["inspect2_1"] = {
            Source = "check_1",
            EventTable = rst_magcheck,
            IKTimeLine = rik_magcheck
        },
        ["inspect_empty2_0"] = {
            Source = "check_1_empty",
            EventTable = rst_magcheck,
            IKTimeLine = rik_magcheck
        },
        ["inspect2_2"] = {
            Source = "check_2",
            EventTable = rst_magcheck,
            IKTimeLine = rik_magcheck
        },
        ["inspect_empty2_2"] = {
            Source = "check_2_empty",
            EventTable = rst_magcheck,
            IKTimeLine = rik_magcheck
        },
        ["inspect2_3"] = {
            Source = "check_3",
            EventTable = rst_magcheck,
            IKTimeLine = rik_magcheck
        },
        ["inspect_empty2_3"] = {
            Source = "check_3_empty",
            EventTable = rst_magcheck,
            IKTimeLine = rik_magcheck
        },

        ["inspect0"] = {
            Source = "check_chamber",
            EventTable = {
                -- { s = randspin, t = 0.1 },
                { s = randspin, t = 0.44 },
                { s =  path .. "vector_bolt_handle_grab.ogg", t = 0.36 },
                { s =  path .. "vector_bolt_out_slow.ogg", t = 0.87 },
                { s =  path .. "vector_bolt_in_slow.ogg", t = 1.37 },
                { s = path .. "p90_bolt_handle_bounce.ogg", t = 1.59 },
                { s = randspin, t = 1.47 },
                -- { s = randspin, t = 1.48 },
            },
            IKTimeLine = {
                { t = 0, lhik = 1 },
                { t = 0.15, lhik = 0 },
                { t = 0.75, lhik = 0 },
                { t = 0.89, lhik = 1 },
                { t = 1, lhik = 1 },
            },
        },
        ["inspect_empty0"] = {
            Source = "check_chamber_empty",
            EventTable = {
                { s = randspin, t = 0.08 },
                { s = randspin, t = 0.9 },
            },
        },

        ["firemode_1"] = {
            Source = "firemode2",
            EventTable = {
                { s = "arc9_eft_shared/weap_handoff.ogg", t = 0.05, v = 0.12},
                { s =  path .. "vector_selector.ogg", t = 0.54 },
                { s = "arc9_eft_shared/weap_handoff.ogg", t = 0.92, v = 0.12},
            },
            IKTimeLine = {
                { t = 0, lhik = 1 },
                { t = 0.3, lhik = 0 },
                { t = 0.8, lhik = 0 },
                { t = 1, lhik = 1 },
            },
        },
        ["firemode_2"] = {
            Source = "firemode0",
            EventTable = {
                { s = "arc9_eft_shared/weap_handoff.ogg", t = 0.05, v = 0.12},
                { s =  path .. "vector_selector.ogg", t = 0.7 },
                { s = "arc9_eft_shared/weap_handoff.ogg", t = 1.08, v = 0.12},
            },
            IKTimeLine = {
                { t = 0, lhik = 1 },
                { t = 0.3, lhik = 0 },
                { t = 0.8, lhik = 0 },
                { t = 1, lhik = 1 },
            },
        },
        ["firemode_3"] = {
            Source = "firemode1",
            EventTable = {
                { s = "arc9_eft_shared/weap_handoff.ogg", t = 0.05, v = 0.12},
                { s =  path .. "vector_selector.ogg", t = 0.7 },
                { s = "arc9_eft_shared/weap_handoff.ogg", t = 1.08, v = 0.12},
            },
            IKTimeLine = {
                { t = 0, lhik = 1 },
                { t = 0.3, lhik = 0 },
                { t = 0.8, lhik = 0 },
                { t = 1, lhik = 1 },
            },
        },
        ["firemode_1_empty"] = {
            Source = "firemode2_empty",
            EventTable = {
                { s = "arc9_eft_shared/weap_handoff.ogg", t = 0.05, v = 0.12},
                { s =  path .. "vector_selector.ogg", t = 0.54 },
                { s = "arc9_eft_shared/weap_handoff.ogg", t = 0.92, v = 0.12},
            },
            IKTimeLine = {
                { t = 0, lhik = 1 },
                { t = 0.3, lhik = 0 },
                { t = 0.8, lhik = 0 },
                { t = 1, lhik = 1 },
            },
        },
        ["firemode_2_empty"] = {
            Source = "firemode0_empty",
            EventTable = {
                { s = "arc9_eft_shared/weap_handoff.ogg", t = 0.05, v = 0.12},
                { s =  path .. "vector_selector.ogg", t = 0.7 },
                { s = "arc9_eft_shared/weap_handoff.ogg", t = 1.08, v = 0.12},
            },
            IKTimeLine = {
                { t = 0, lhik = 1 },
                { t = 0.3, lhik = 0 },
                { t = 0.8, lhik = 0 },
                { t = 1, lhik = 1 },
            },
        },
        ["firemode_3_empty"] = {
            Source = "firemode1_empty",
            EventTable = {
                { s = "arc9_eft_shared/weap_handoff.ogg", t = 0.05, v = 0.12},
                { s =  path .. "vector_selector.ogg", t = 0.7, v = 0.12 },
                { s = "arc9_eft_shared/weap_handoff.ogg", t = 1.08, v = 0.12},
            },
            IKTimeLine = {
                { t = 0, lhik = 1 },
                { t = 0.3, lhik = 0 },
                { t = 0.8, lhik = 0 },
                { t = 1, lhik = 1 },
            },
        },
    

    }

------------------------- [[[           Attachments            ]]] -------------------------

SWEP.AttachmentElements = {
    ["eft_barrel_vector45_5"] = { Bodygroups = { {1, 1} } },
    ["eft_barrel_vector45_6"] = { Bodygroups = { {1, 2} } },
    ["eft_barrel_vector9_5"] = { Bodygroups = { {1, 1} } },
    ["eft_barrel_vector9_6"] = { Bodygroups = { {1, 2} } },

    ["eft_stock_vector_std_unfolded"] = { Bodygroups = { {2, 1} } },
    ["eft_stock_vector_std_folded"] = { Bodygroups = { {2, 2} } },
    ["eft_stock_vector_adap"] = { Bodygroups = { {2, 3} } },
    ["eft_stock_vector_cap"] = { Bodygroups = { {3, 1} } },
    ["eft_mount_vector_bottom"] = { Bodygroups = { {4, 1} } },
    ["eft_mount_vector_modular"] = { Bodygroups = { {4, 2} } },

    ["eft_ammo_45acp_fmj"]    = { Bodygroups = { {5, 0} } },
    ["eft_ammo_45acp_ap"]    = { Bodygroups = { {5, 1} } },
    ["eft_ammo_45acp_hydra"]    = { Bodygroups = { {5, 2} } },
    ["eft_ammo_45acp_laser"]    = { Bodygroups = { {5, 3} } },
    ["eft_ammo_45acp_rip"]    = { Bodygroups = { {5, 4} } },
}

SWEP.missingpartsnotifsent = 0

function SWEP:HookP_BlockFire()
    if  !self:GetValue("HasBarrel") or
        !self:GetValue("HasAmmoooooooo") then
            if SERVER and self.missingpartsnotifsent < CurTime() then
                self.missingpartsnotifsent = CurTime() + 3
                net.Start("arc9eftmissingparts")
                net.Send(self:GetOwner())
            end
            return true 
    end
end

function SWEP:Hook_RedPrintName()
    if  !self:GetValue("HasBarrel") or
        !self:GetValue("HasAmmoooooooo") then
            return true 
    end
end

SWEP.Attachments = {
    {
        PrintName = "Barrel",
        Category = "eft_vector45_barrel",
        Bone = "mod_barrel",
        Installed = "eft_barrel_vector45_5",
        SubAttachments = {
            {
                Installed = "eft_muzzle_vector_cap"
            }
        },
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Rear Sight",
        Category = {"eft_ar_rearsight", "eft_rearsight"},
        ExcludeElements = {"NoRS"},
        Bone = "mod_sight_rear",
        Installed = "eft_rearsight_kriss_defiance",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Front Sight",
        Category = {"eft_ar_frontsight", "eft_frontsight"},
        Bone = "mod_sight_front",
        Installed = "eft_frontsight_kriss_defiance",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Optic",
        Category = {"eft_optic_medium", "eft_optic_large_nosniper", "eft_optic_small"},
        ExcludeElements = {"IronsBlockingSight"},
        Bone = "mod_scope",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Ammunition",
        Category = "eft_ammo_45acp",
        Bone = "mod_magazine",
        Integral = true,
        Installed = "eft_ammo_45acp_fmj",
        Pos = Vector(0, 0, -5),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Magazine",
        Category = "eft_mag_vector45",
        Bone = "mod_magazine",
        Installed = "eft_vector_mag_13",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, -2),
    },
    {
        PrintName = "Stock",
        Category = "eft_vector_stock",
        Bone = "mod_stock",
        Installed = "eft_stock_vector_std",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Top Tactical",
        Category = {"eft_tactical_top"},
        Bone = "mod_tactical_000",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0.5),
    },
    {
        PrintName = "B Rail",
        Category = {"eft_vector_bottom"},
        Bone = "weapon",
        Installed = "eft_mount_vector_bottom",
        Pos = Vector(-0.35, 21.75, -1.8),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "R Rail",
        Category = {"eft_vector_side"},
        Bone = "weapon",
        Installed = "eft_mount_vector_side",
        ExcludeElements = {"eft_mount_vector_modular"},
        Pos = Vector(-0.8, 22.17, -0.85),
        Ang = Angle(0, -90, 180),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "L Rail",
        Category = {"eft_vector_side"},
        Bone = "weapon",
        Installed = "eft_mount_vector_side",
        ExcludeElements = {"eft_mount_vector_modular"},
        Pos = Vector(0.8, 22.17, -0.85),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    
    {
        PrintName = "Custom slot",
        Category = {"eft_custom_slot", "eft_custom_slot_vector"},
        Bone = "mod_stock",
        Pos = Vector(0, -3, -5),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}

SWEP.EFTErgo = 65
if ARC9EFTBASE then
    SWEP.AimDownSightsTimeHook = ARC9EFT.ErgoHook or nil
    SWEP.HoldBreathTimeHook = ARC9EFT.ErgoBreathHook or nil
    -- SWEP.HookP_TranslateSound = ARC9EFT.ErgoAdsVolume or nil
    SWEP.SpreadHook = ARC9EFT.SpreadBonus or nil
else
    print("Dum! install arc9 eft shared!!!!!!!!!!!!!!")
end
SWEP.AimDownSightsTimeMultShooting = 4

SWEP.RicochetSounds = ARC9EFT.RicochetSounds
SWEP.ShellSounds = ARC9EFT.Shells9mm