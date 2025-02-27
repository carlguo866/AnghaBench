; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_init_phy_identify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_init_phy_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_phy = type { %struct.TYPE_7__, %struct.TYPE_8__*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_8__* }

@SAS_END_DEVICE = common dso_local global i32 0, align 4
@PHY_ROLE_INITIATOR = common dso_local global i32 0, align 4
@PHY_ROLE_TARGET = common dso_local global i32 0, align 4
@SAS_ADDR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asd_phy*)* @asd_init_phy_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asd_init_phy_identify(%struct.asd_phy* %0) #0 {
  %2 = alloca %struct.asd_phy*, align 8
  store %struct.asd_phy* %0, %struct.asd_phy** %2, align 8
  %3 = load %struct.asd_phy*, %struct.asd_phy** %2, align 8
  %4 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %3, i32 0, i32 3
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %8 = load %struct.asd_phy*, %struct.asd_phy** %2, align 8
  %9 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %8, i32 0, i32 1
  store %struct.TYPE_8__* %7, %struct.TYPE_8__** %9, align 8
  %10 = load %struct.asd_phy*, %struct.asd_phy** %2, align 8
  %11 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %10, i32 0, i32 1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = call i32 @memset(%struct.TYPE_8__* %12, i32 0, i32 20)
  %14 = load i32, i32* @SAS_END_DEVICE, align 4
  %15 = load %struct.asd_phy*, %struct.asd_phy** %2, align 8
  %16 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %15, i32 0, i32 1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 4
  store i32 %14, i32* %18, align 4
  %19 = load %struct.asd_phy*, %struct.asd_phy** %2, align 8
  %20 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @PHY_ROLE_INITIATOR, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %1
  %27 = load %struct.asd_phy*, %struct.asd_phy** %2, align 8
  %28 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.asd_phy*, %struct.asd_phy** %2, align 8
  %32 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %31, i32 0, i32 1
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 3
  store i32 %30, i32* %34, align 4
  br label %35

35:                                               ; preds = %26, %1
  %36 = load %struct.asd_phy*, %struct.asd_phy** %2, align 8
  %37 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @PHY_ROLE_TARGET, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %35
  %44 = load %struct.asd_phy*, %struct.asd_phy** %2, align 8
  %45 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.asd_phy*, %struct.asd_phy** %2, align 8
  %49 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %48, i32 0, i32 1
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  store i32 %47, i32* %51, align 4
  br label %52

52:                                               ; preds = %43, %35
  %53 = load %struct.asd_phy*, %struct.asd_phy** %2, align 8
  %54 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %53, i32 0, i32 1
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.asd_phy*, %struct.asd_phy** %2, align 8
  %59 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %58, i32 0, i32 2
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %64 = call i32 @memcpy(i32 %57, i32 %62, i32 %63)
  %65 = load %struct.asd_phy*, %struct.asd_phy** %2, align 8
  %66 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.asd_phy*, %struct.asd_phy** %2, align 8
  %70 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %69, i32 0, i32 1
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  store i32 %68, i32* %72, align 4
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
