; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_pci.c_ahc_aha2940Pro_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_pci.c_ahc_aha2940Pro_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32 }

@AHC_INT50_SPEEDFLEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahc_softc*)* @ahc_aha2940Pro_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahc_aha2940Pro_setup(%struct.ahc_softc* %0) #0 {
  %2 = alloca %struct.ahc_softc*, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %2, align 8
  %3 = load i32, i32* @AHC_INT50_SPEEDFLEX, align 4
  %4 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %5 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = or i32 %6, %3
  store i32 %7, i32* %5, align 4
  %8 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %9 = call i32 @ahc_aic7880_setup(%struct.ahc_softc* %8)
  ret i32 %9
}

declare dso_local i32 @ahc_aic7880_setup(%struct.ahc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
