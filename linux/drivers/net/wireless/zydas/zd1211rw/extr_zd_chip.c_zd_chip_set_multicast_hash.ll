; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_chip.c_zd_chip_set_multicast_hash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_chip.c_zd_chip_set_multicast_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_chip = type { i32 }
%struct.zd_mc_hash = type { i32, i32 }
%struct.zd_ioreq32 = type { i32, i32 }

@CR_GROUP_HASH_P1 = common dso_local global i32 0, align 4
@CR_GROUP_HASH_P2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zd_chip_set_multicast_hash(%struct.zd_chip* %0, %struct.zd_mc_hash* %1) #0 {
  %3 = alloca %struct.zd_chip*, align 8
  %4 = alloca %struct.zd_mc_hash*, align 8
  %5 = alloca [2 x %struct.zd_ioreq32], align 16
  store %struct.zd_chip* %0, %struct.zd_chip** %3, align 8
  store %struct.zd_mc_hash* %1, %struct.zd_mc_hash** %4, align 8
  %6 = getelementptr inbounds [2 x %struct.zd_ioreq32], [2 x %struct.zd_ioreq32]* %5, i64 0, i64 0
  %7 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %6, i32 0, i32 0
  %8 = load i32, i32* @CR_GROUP_HASH_P1, align 4
  store i32 %8, i32* %7, align 8
  %9 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %6, i32 0, i32 1
  %10 = load %struct.zd_mc_hash*, %struct.zd_mc_hash** %4, align 8
  %11 = getelementptr inbounds %struct.zd_mc_hash, %struct.zd_mc_hash* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %6, i64 1
  %14 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %13, i32 0, i32 0
  %15 = load i32, i32* @CR_GROUP_HASH_P2, align 4
  store i32 %15, i32* %14, align 8
  %16 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %13, i32 0, i32 1
  %17 = load %struct.zd_mc_hash*, %struct.zd_mc_hash** %4, align 8
  %18 = getelementptr inbounds %struct.zd_mc_hash, %struct.zd_mc_hash* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %16, align 4
  %20 = load %struct.zd_chip*, %struct.zd_chip** %3, align 8
  %21 = getelementptr inbounds [2 x %struct.zd_ioreq32], [2 x %struct.zd_ioreq32]* %5, i64 0, i64 0
  %22 = getelementptr inbounds [2 x %struct.zd_ioreq32], [2 x %struct.zd_ioreq32]* %5, i64 0, i64 0
  %23 = call i32 @ARRAY_SIZE(%struct.zd_ioreq32* %22)
  %24 = call i32 @zd_iowrite32a(%struct.zd_chip* %20, %struct.zd_ioreq32* %21, i32 %23)
  ret i32 %24
}

declare dso_local i32 @zd_iowrite32a(%struct.zd_chip*, %struct.zd_ioreq32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.zd_ioreq32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
