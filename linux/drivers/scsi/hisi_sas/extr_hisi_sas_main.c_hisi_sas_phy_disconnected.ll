; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_phy_disconnected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_phy_disconnected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_sas_phy = type { i32, i64, i32*, i64, i64, %struct.asd_sas_phy }
%struct.asd_sas_phy = type { %struct.sas_phy* }
%struct.sas_phy = type { i32 }

@SAS_LINK_RATE_UNKNOWN = common dso_local global i32 0, align 4
@SAS_PHY_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_sas_phy*)* @hisi_sas_phy_disconnected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hisi_sas_phy_disconnected(%struct.hisi_sas_phy* %0) #0 {
  %2 = alloca %struct.hisi_sas_phy*, align 8
  %3 = alloca %struct.asd_sas_phy*, align 8
  %4 = alloca %struct.sas_phy*, align 8
  %5 = alloca i64, align 8
  store %struct.hisi_sas_phy* %0, %struct.hisi_sas_phy** %2, align 8
  %6 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %2, align 8
  %7 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %6, i32 0, i32 5
  store %struct.asd_sas_phy* %7, %struct.asd_sas_phy** %3, align 8
  %8 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %3, align 8
  %9 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %8, i32 0, i32 0
  %10 = load %struct.sas_phy*, %struct.sas_phy** %9, align 8
  store %struct.sas_phy* %10, %struct.sas_phy** %4, align 8
  %11 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %2, align 8
  %12 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %11, i32 0, i32 4
  store i64 0, i64* %12, align 8
  %13 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %2, align 8
  %14 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %13, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %2, align 8
  %16 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %15, i32 0, i32 2
  store i32* null, i32** %16, align 8
  %17 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %2, align 8
  %18 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %17, i32 0, i32 0
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %2, align 8
  %22 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load i32, i32* @SAS_LINK_RATE_UNKNOWN, align 4
  %27 = load %struct.sas_phy*, %struct.sas_phy** %4, align 8
  %28 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %33

29:                                               ; preds = %1
  %30 = load i32, i32* @SAS_PHY_DISABLED, align 4
  %31 = load %struct.sas_phy*, %struct.sas_phy** %4, align 8
  %32 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %29, %25
  %34 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %2, align 8
  %35 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %34, i32 0, i32 0
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
