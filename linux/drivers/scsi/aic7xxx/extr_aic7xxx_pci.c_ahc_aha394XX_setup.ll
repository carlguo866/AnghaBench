; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_pci.c_ahc_aha394XX_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_pci.c_ahc_aha394XX_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i8, i32 }

@.str = private unnamed_addr constant [58 x i8] c"adapter at unexpected slot %d\0Aunable to map to a channel\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahc_softc*)* @ahc_aha394XX_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahc_aha394XX_setup(%struct.ahc_softc* %0) #0 {
  %2 = alloca %struct.ahc_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %2, align 8
  %4 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %5 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @ahc_get_pci_slot(i32 %7)
  switch i32 %8, label %15 [
    i32 129, label %9
    i32 128, label %12
  ]

9:                                                ; preds = %1
  %10 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %11 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %10, i32 0, i32 0
  store i8 65, i8* %11, align 4
  br label %21

12:                                               ; preds = %1
  %13 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %14 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %13, i32 0, i32 0
  store i8 66, i8* %14, align 4
  br label %21

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @ahc_get_pci_slot(i32 %16)
  %18 = call i32 @printk(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %20 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %19, i32 0, i32 0
  store i8 65, i8* %20, align 4
  br label %21

21:                                               ; preds = %15, %12, %9
  ret i32 0
}

declare dso_local i32 @ahc_get_pci_slot(i32) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
