; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-region-hash.c_rh_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-region-hash.c_rh_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_region_hash = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_region_hash*, i32)* @rh_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rh_hash(%struct.dm_region_hash* %0, i32 %1) #0 {
  %3 = alloca %struct.dm_region_hash*, align 8
  %4 = alloca i32, align 4
  store %struct.dm_region_hash* %0, %struct.dm_region_hash** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %7 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = mul nsw i32 %5, %8
  %10 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %11 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = ashr i32 %9, %12
  %14 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %15 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %13, %16
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
