; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_tx.c_dmu_tx_hold_bonus_by_dnode.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_tx.c_dmu_tx_hold_bonus_by_dnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@THT_BONUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmu_tx_hold_bonus_by_dnode(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @ASSERT0(i32 %8)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* @THT_BONUS, align 4
  %13 = call i32* @dmu_tx_hold_dnode_impl(%struct.TYPE_4__* %10, i32* %11, i32 %12, i32 0, i32 0)
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @dmu_tx_count_dnode(i32* %17)
  br label %19

19:                                               ; preds = %16, %2
  ret void
}

declare dso_local i32 @ASSERT0(i32) #1

declare dso_local i32* @dmu_tx_hold_dnode_impl(%struct.TYPE_4__*, i32*, i32, i32, i32) #1

declare dso_local i32 @dmu_tx_count_dnode(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
