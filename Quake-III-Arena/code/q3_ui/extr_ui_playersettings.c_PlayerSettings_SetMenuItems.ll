; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_playersettings.c_PlayerSettings_SetMenuItems.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_playersettings.c_PlayerSettings_SetMenuItems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@s_playersettings = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"color1\00", align 1
@gamecodetoui = common dso_local global i32* null, align 8
@YAW = common dso_local global i64 0, align 8
@PITCH = common dso_local global i64 0, align 8
@ROLL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@LEGS_IDLE = common dso_local global i32 0, align 4
@TORSO_STAND = common dso_local global i32 0, align 4
@vec3_origin = common dso_local global i32 0, align 4
@WP_MACHINEGUN = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"handicap\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @PlayerSettings_SetMenuItems to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PlayerSettings_SetMenuItems() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @s_playersettings, i32 0, i32 3, i32 0, i32 0), align 4
  %5 = call i32 @UI_Cvar_VariableString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @Q_strncpyz(i32 %4, i32 %5, i32 4)
  %7 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %8 = sub nsw i32 %7, 1
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %0
  %12 = load i32, i32* %2, align 4
  %13 = icmp sgt i32 %12, 6
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %0
  store i32 6, i32* %2, align 4
  br label %15

15:                                               ; preds = %14, %11
  %16 = load i32*, i32** @gamecodetoui, align 8
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @s_playersettings, i32 0, i32 2, i32 0), align 4
  %21 = call i32 @memset(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @s_playersettings, i32 0, i32 1), i32 0, i32 4)
  %22 = load i32*, i32** %1, align 8
  %23 = load i64, i64* @YAW, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  store i32 150, i32* %24, align 4
  %25 = load i32*, i32** %1, align 8
  %26 = load i64, i64* @PITCH, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32 0, i32* %27, align 4
  %28 = load i32*, i32** %1, align 8
  %29 = load i64, i64* @ROLL, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32 0, i32* %30, align 4
  %31 = call i32 @UI_Cvar_VariableString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %32 = call i32 @UI_PlayerInfo_SetModel(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @s_playersettings, i32 0, i32 1), i32 %31)
  %33 = load i32, i32* @LEGS_IDLE, align 4
  %34 = load i32, i32* @TORSO_STAND, align 4
  %35 = load i32*, i32** %1, align 8
  %36 = load i32, i32* @vec3_origin, align 4
  %37 = load i32, i32* @WP_MACHINEGUN, align 4
  %38 = load i32, i32* @qfalse, align 4
  %39 = call i32 @UI_PlayerInfo_SetInfo(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @s_playersettings, i32 0, i32 1), i32 %33, i32 %34, i32* %35, i32 %36, i32 %37, i32 %38)
  %40 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %41 = call i32 @Com_Clamp(i32 5, i32 100, i32 %40)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = sdiv i32 %42, 5
  %44 = sub nsw i32 20, %43
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @s_playersettings, i32 0, i32 0, i32 0), align 4
  ret void
}

declare dso_local i32 @Q_strncpyz(i32, i32, i32) #1

declare dso_local i32 @UI_Cvar_VariableString(i8*) #1

declare dso_local i32 @trap_Cvar_VariableValue(i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @UI_PlayerInfo_SetModel(i32*, i32) #1

declare dso_local i32 @UI_PlayerInfo_SetInfo(i32*, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @Com_Clamp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
