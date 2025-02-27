; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2860/common/extr_ba_action.c_ba_mpdu_blk_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2860/common/extr_ba_action.c_ba_mpdu_blk_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reordering_mpdu = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.reordering_mpdu* (%struct.TYPE_5__*)* @ba_mpdu_blk_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.reordering_mpdu* @ba_mpdu_blk_alloc(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.reordering_mpdu*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = call i32 @NdisAcquireSpinLock(i32* %6)
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = call %struct.reordering_mpdu* @ba_dequeue(i32* %10)
  store %struct.reordering_mpdu* %11, %struct.reordering_mpdu** %3, align 8
  %12 = load %struct.reordering_mpdu*, %struct.reordering_mpdu** %3, align 8
  %13 = icmp ne %struct.reordering_mpdu* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.reordering_mpdu*, %struct.reordering_mpdu** %3, align 8
  %16 = call i32 @NdisZeroMemory(%struct.reordering_mpdu* %15, i32 4)
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = call i32 @NdisReleaseSpinLock(i32* %20)
  %22 = load %struct.reordering_mpdu*, %struct.reordering_mpdu** %3, align 8
  ret %struct.reordering_mpdu* %22
}

declare dso_local i32 @NdisAcquireSpinLock(i32*) #1

declare dso_local %struct.reordering_mpdu* @ba_dequeue(i32*) #1

declare dso_local i32 @NdisZeroMemory(%struct.reordering_mpdu*, i32) #1

declare dso_local i32 @NdisReleaseSpinLock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
