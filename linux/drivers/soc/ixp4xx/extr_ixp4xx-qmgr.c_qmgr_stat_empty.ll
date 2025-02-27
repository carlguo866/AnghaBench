; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ixp4xx/extr_ixp4xx-qmgr.c_qmgr_stat_empty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ixp4xx/extr_ixp4xx-qmgr.c_qmgr_stat_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HALF_QUEUES = common dso_local global i32 0, align 4
@QUEUE_STAT1_EMPTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qmgr_stat_empty(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @HALF_QUEUES, align 4
  %5 = icmp uge i32 %3, %4
  %6 = zext i1 %5 to i32
  %7 = call i32 @BUG_ON(i32 %6)
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @__qmgr_get_stat1(i32 %8)
  %10 = load i32, i32* @QUEUE_STAT1_EMPTY, align 4
  %11 = and i32 %9, %10
  ret i32 %11
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @__qmgr_get_stat1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
