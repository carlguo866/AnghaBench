; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_via82xx.c_snd_via82xx_set_table_ptr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_via82xx.c_snd_via82xx_set_table_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via82xx = type { i32 }
%struct.viadev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@OFFSET_TABLE_PTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.via82xx*, %struct.viadev*)* @snd_via82xx_set_table_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_via82xx_set_table_ptr(%struct.via82xx* %0, %struct.viadev* %1) #0 {
  %3 = alloca %struct.via82xx*, align 8
  %4 = alloca %struct.viadev*, align 8
  store %struct.via82xx* %0, %struct.via82xx** %3, align 8
  store %struct.viadev* %1, %struct.viadev** %4, align 8
  %5 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %6 = call i32 @snd_via82xx_codec_ready(%struct.via82xx* %5, i32 0)
  %7 = load %struct.viadev*, %struct.viadev** %4, align 8
  %8 = getelementptr inbounds %struct.viadev, %struct.viadev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = trunc i64 %10 to i32
  %12 = load %struct.viadev*, %struct.viadev** %4, align 8
  %13 = load i32, i32* @OFFSET_TABLE_PTR, align 4
  %14 = call i32 @VIADEV_REG(%struct.viadev* %12, i32 %13)
  %15 = call i32 @outl(i32 %11, i32 %14)
  %16 = call i32 @udelay(i32 20)
  %17 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %18 = call i32 @snd_via82xx_codec_ready(%struct.via82xx* %17, i32 0)
  ret void
}

declare dso_local i32 @snd_via82xx_codec_ready(%struct.via82xx*, i32) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @VIADEV_REG(%struct.viadev*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
