; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_patch.c_patch_sigmatel_stac9758_specific.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_patch.c_patch_sigmatel_stac9758_specific.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32 }

@snd_ac97_sigmatel_stac9758_controls = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Headphone Playback\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Front Playback\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Video Playback\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Surround Mix Playback\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ac97*)* @patch_sigmatel_stac9758_specific to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_sigmatel_stac9758_specific(%struct.snd_ac97* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ac97*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %3, align 8
  %5 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %6 = call i32 @patch_sigmatel_stac97xx_specific(%struct.snd_ac97* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %26

11:                                               ; preds = %1
  %12 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %13 = load i32, i32* @snd_ac97_sigmatel_stac9758_controls, align 4
  %14 = load i32, i32* @snd_ac97_sigmatel_stac9758_controls, align 4
  %15 = call i32 @ARRAY_SIZE(i32 %14)
  %16 = call i32 @patch_build_controls(%struct.snd_ac97* %12, i32 %13, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %26

21:                                               ; preds = %11
  %22 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %23 = call i32 @snd_ac97_rename_vol_ctl(%struct.snd_ac97* %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %25 = call i32 @snd_ac97_rename_vol_ctl(%struct.snd_ac97* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %21, %19, %9
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @patch_sigmatel_stac97xx_specific(%struct.snd_ac97*) #1

declare dso_local i32 @patch_build_controls(%struct.snd_ac97*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_ac97_rename_vol_ctl(%struct.snd_ac97*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
