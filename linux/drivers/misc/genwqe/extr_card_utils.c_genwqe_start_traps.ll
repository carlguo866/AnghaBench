; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_utils.c_genwqe_start_traps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_utils.c_genwqe_start_traps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genwqe_dev = type { i32 }

@IO_SLC_MISC_DEBUG_CLR = common dso_local global i32 0, align 4
@IO_SLC_MISC_DEBUG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @genwqe_start_traps(%struct.genwqe_dev* %0) #0 {
  %2 = alloca %struct.genwqe_dev*, align 8
  store %struct.genwqe_dev* %0, %struct.genwqe_dev** %2, align 8
  %3 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %4 = load i32, i32* @IO_SLC_MISC_DEBUG_CLR, align 4
  %5 = call i32 @__genwqe_writeq(%struct.genwqe_dev* %3, i32 %4, i32 12)
  %6 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %7 = call i64 @genwqe_need_err_masking(%struct.genwqe_dev* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %11 = load i32, i32* @IO_SLC_MISC_DEBUG, align 4
  %12 = call i32 @__genwqe_writeq(%struct.genwqe_dev* %10, i32 %11, i32 10)
  br label %13

13:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @__genwqe_writeq(%struct.genwqe_dev*, i32, i32) #1

declare dso_local i64 @genwqe_need_err_masking(%struct.genwqe_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
