; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-serverworks.c_ata_serverworks_sata_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-serverworks.c_ata_serverworks_sata_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_channel = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ata_serverworks_sata_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_serverworks_sata_reset(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_channel*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.ata_channel* @device_get_softc(i32 %4)
  store %struct.ata_channel* %5, %struct.ata_channel** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = call i64 @ata_sata_phy_reset(i32 %6, i32 -1, i32 0)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @ata_generic_reset(i32 %10)
  br label %15

12:                                               ; preds = %1
  %13 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %14 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  br label %15

15:                                               ; preds = %12, %9
  ret void
}

declare dso_local %struct.ata_channel* @device_get_softc(i32) #1

declare dso_local i64 @ata_sata_phy_reset(i32, i32, i32) #1

declare dso_local i32 @ata_generic_reset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
