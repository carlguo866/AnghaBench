; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_via82xx_modem.c_snd_via82xx_set_table_ptr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_via82xx_modem.c_snd_via82xx_set_table_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via82xx_modem = type { i32 }
%struct.viadev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@OFFSET_TABLE_PTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.via82xx_modem*, %struct.viadev*)* @snd_via82xx_set_table_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_via82xx_set_table_ptr(%struct.via82xx_modem* %0, %struct.viadev* %1) #0 {
  %3 = alloca %struct.via82xx_modem*, align 8
  %4 = alloca %struct.viadev*, align 8
  store %struct.via82xx_modem* %0, %struct.via82xx_modem** %3, align 8
  store %struct.viadev* %1, %struct.viadev** %4, align 8
  %5 = load %struct.via82xx_modem*, %struct.via82xx_modem** %3, align 8
  %6 = load %struct.via82xx_modem*, %struct.via82xx_modem** %3, align 8
  %7 = getelementptr inbounds %struct.via82xx_modem, %struct.via82xx_modem* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @snd_via82xx_codec_ready(%struct.via82xx_modem* %5, i32 %8)
  %10 = load %struct.viadev*, %struct.viadev** %4, align 8
  %11 = getelementptr inbounds %struct.viadev, %struct.viadev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = trunc i64 %13 to i32
  %15 = load %struct.viadev*, %struct.viadev** %4, align 8
  %16 = load i32, i32* @OFFSET_TABLE_PTR, align 4
  %17 = call i32 @VIADEV_REG(%struct.viadev* %15, i32 %16)
  %18 = call i32 @outl(i32 %14, i32 %17)
  %19 = call i32 @udelay(i32 20)
  %20 = load %struct.via82xx_modem*, %struct.via82xx_modem** %3, align 8
  %21 = load %struct.via82xx_modem*, %struct.via82xx_modem** %3, align 8
  %22 = getelementptr inbounds %struct.via82xx_modem, %struct.via82xx_modem* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @snd_via82xx_codec_ready(%struct.via82xx_modem* %20, i32 %23)
  ret void
}

declare dso_local i32 @snd_via82xx_codec_ready(%struct.via82xx_modem*, i32) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @VIADEV_REG(%struct.viadev*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
