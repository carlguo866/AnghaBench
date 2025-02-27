; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_atiixp_modem.c_snd_atiixp_ac97_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_atiixp_modem.c_snd_atiixp_ac97_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32, %struct.atiixp_modem* }
%struct.atiixp_modem = type { i32 }

@AC97_GPIO_STATUS = common dso_local global i16 0, align 2
@MODEM_OUT_GPIO = common dso_local global i32 0, align 4
@ATI_REG_MODEM_OUT_GPIO_DATA_SHIFT = common dso_local global i16 0, align 2
@ATI_REG_MODEM_OUT_GPIO_EN = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*, i16, i16)* @snd_atiixp_ac97_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_atiixp_ac97_write(%struct.snd_ac97* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca %struct.atiixp_modem*, align 8
  store %struct.snd_ac97* %0, %struct.snd_ac97** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %8 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %9 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %8, i32 0, i32 1
  %10 = load %struct.atiixp_modem*, %struct.atiixp_modem** %9, align 8
  store %struct.atiixp_modem* %10, %struct.atiixp_modem** %7, align 8
  %11 = load i16, i16* %5, align 2
  %12 = zext i16 %11 to i32
  %13 = load i16, i16* @AC97_GPIO_STATUS, align 2
  %14 = zext i16 %13 to i32
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %3
  %17 = load %struct.atiixp_modem*, %struct.atiixp_modem** %7, align 8
  %18 = load i32, i32* @MODEM_OUT_GPIO, align 4
  %19 = load i16, i16* %6, align 2
  %20 = zext i16 %19 to i32
  %21 = load i16, i16* @ATI_REG_MODEM_OUT_GPIO_DATA_SHIFT, align 2
  %22 = zext i16 %21 to i32
  %23 = shl i32 %20, %22
  %24 = load i16, i16* @ATI_REG_MODEM_OUT_GPIO_EN, align 2
  %25 = zext i16 %24 to i32
  %26 = or i32 %23, %25
  %27 = trunc i32 %26 to i16
  %28 = call i32 @atiixp_write(%struct.atiixp_modem* %17, i32 %18, i16 zeroext %27)
  br label %37

29:                                               ; preds = %3
  %30 = load %struct.atiixp_modem*, %struct.atiixp_modem** %7, align 8
  %31 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %32 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i16, i16* %5, align 2
  %35 = load i16, i16* %6, align 2
  %36 = call i32 @snd_atiixp_codec_write(%struct.atiixp_modem* %30, i32 %33, i16 zeroext %34, i16 zeroext %35)
  br label %37

37:                                               ; preds = %29, %16
  ret void
}

declare dso_local i32 @atiixp_write(%struct.atiixp_modem*, i32, i16 zeroext) #1

declare dso_local i32 @snd_atiixp_codec_write(%struct.atiixp_modem*, i32, i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
