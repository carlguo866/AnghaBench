; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_codec_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_codec_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { %struct.snd_ymfpci* }
%struct.snd_ymfpci = type { i32 }

@YDSXG_AC97WRITECMD = common dso_local global i32 0, align 4
@YDSXGR_AC97CMDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*, i32, i32)* @snd_ymfpci_codec_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ymfpci_codec_write(%struct.snd_ac97* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_ymfpci*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %10 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %9, i32 0, i32 0
  %11 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %10, align 8
  store %struct.snd_ymfpci* %11, %struct.snd_ymfpci** %7, align 8
  %12 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %7, align 8
  %13 = call i32 @snd_ymfpci_codec_ready(%struct.snd_ymfpci* %12, i32 0)
  %14 = load i32, i32* @YDSXG_AC97WRITECMD, align 4
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %14, %15
  %17 = shl i32 %16, 16
  %18 = load i32, i32* %6, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %8, align 4
  %20 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %7, align 8
  %21 = load i32, i32* @YDSXGR_AC97CMDDATA, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @snd_ymfpci_writel(%struct.snd_ymfpci* %20, i32 %21, i32 %22)
  ret void
}

declare dso_local i32 @snd_ymfpci_codec_ready(%struct.snd_ymfpci*, i32) #1

declare dso_local i32 @snd_ymfpci_writel(%struct.snd_ymfpci*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
