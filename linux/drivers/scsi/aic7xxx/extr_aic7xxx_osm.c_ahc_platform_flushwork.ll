; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_osm.c_ahc_platform_flushwork.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_osm.c_ahc_platform_flushwork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahc_platform_flushwork(%struct.ahc_softc* %0) #0 {
  %2 = alloca %struct.ahc_softc*, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %2, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
