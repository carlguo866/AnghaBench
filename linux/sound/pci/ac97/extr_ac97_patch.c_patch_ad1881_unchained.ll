; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_patch.c_patch_ad1881_unchained.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_patch.c_patch_ad1881_unchained.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i16*, i16*, i32* }

@AC97_AD_SERIAL_CFG = common dso_local global i32 0, align 4
@AC97_AD_CODEC_CFG = common dso_local global i32 0, align 4
@AC97_VENDOR_ID2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.snd_ac97*, i32, i16)* @patch_ad1881_unchained to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @patch_ad1881_unchained(%struct.snd_ac97* %0, i32 %1, i16 zeroext %2) #0 {
  %4 = alloca i16, align 2
  %5 = alloca %struct.snd_ac97*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  store %struct.snd_ac97* %0, %struct.snd_ac97** %5, align 8
  store i32 %1, i32* %6, align 4
  store i16 %2, i16* %7, align 2
  %9 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %10 = load i32, i32* @AC97_AD_SERIAL_CFG, align 4
  %11 = load i16, i16* %7, align 2
  %12 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %9, i32 %10, i32 28672, i16 zeroext %11)
  %13 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %14 = load i32, i32* @AC97_AD_CODEC_CFG, align 4
  %15 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %13, i32 %14, i32 0)
  %16 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %17 = load i32, i32* @AC97_VENDOR_ID2, align 4
  %18 = call zeroext i16 @snd_ac97_read(%struct.snd_ac97* %16, i32 %17)
  store i16 %18, i16* %8, align 2
  %19 = load i16, i16* %8, align 2
  %20 = zext i16 %19 to i32
  %21 = and i32 %20, 65344
  %22 = icmp ne i32 %21, 21312
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i16 0, i16* %4, align 2
  br label %52

24:                                               ; preds = %3
  %25 = load i16, i16* %7, align 2
  %26 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %27 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i16*, i16** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i16, i16* %30, i64 %32
  store i16 %25, i16* %33, align 2
  %34 = load i16, i16* %8, align 2
  %35 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %36 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i16*, i16** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i16, i16* %39, i64 %41
  store i16 %34, i16* %42, align 2
  %43 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %44 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 0, i32* %50, align 4
  %51 = load i16, i16* %7, align 2
  store i16 %51, i16* %4, align 2
  br label %52

52:                                               ; preds = %24, %23
  %53 = load i16, i16* %4, align 2
  ret i16 %53
}

declare dso_local i32 @snd_ac97_update_bits(%struct.snd_ac97*, i32, i32, i16 zeroext) #1

declare dso_local i32 @snd_ac97_write_cache(%struct.snd_ac97*, i32, i32) #1

declare dso_local zeroext i16 @snd_ac97_read(%struct.snd_ac97*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
