; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebt_among.c_poolsize_invalid.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebt_among.c_poolsize_invalid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebt_mac_wormhash = type { i32 }

@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ebt_mac_wormhash*)* @poolsize_invalid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @poolsize_invalid(%struct.ebt_mac_wormhash* %0) #0 {
  %2 = alloca %struct.ebt_mac_wormhash*, align 8
  store %struct.ebt_mac_wormhash* %0, %struct.ebt_mac_wormhash** %2, align 8
  %3 = load %struct.ebt_mac_wormhash*, %struct.ebt_mac_wormhash** %2, align 8
  %4 = icmp ne %struct.ebt_mac_wormhash* %3, null
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = load %struct.ebt_mac_wormhash*, %struct.ebt_mac_wormhash** %2, align 8
  %7 = getelementptr inbounds %struct.ebt_mac_wormhash, %struct.ebt_mac_wormhash* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = load i32, i32* @INT_MAX, align 4
  %11 = sext i32 %10 to i64
  %12 = udiv i64 %11, 4
  %13 = icmp uge i64 %9, %12
  br label %14

14:                                               ; preds = %5, %1
  %15 = phi i1 [ false, %1 ], [ %13, %5 ]
  %16 = zext i1 %15 to i32
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
