; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_utils.c_genwqe_read_vreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_utils.c_genwqe_read_vreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genwqe_dev = type { i32 }

@IO_PF_SLC_VIRTUAL_WINDOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @genwqe_read_vreg(%struct.genwqe_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.genwqe_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.genwqe_dev* %0, %struct.genwqe_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.genwqe_dev*, %struct.genwqe_dev** %4, align 8
  %8 = load i32, i32* @IO_PF_SLC_VIRTUAL_WINDOW, align 4
  %9 = load i32, i32* %6, align 4
  %10 = and i32 %9, 15
  %11 = call i32 @__genwqe_writeq(%struct.genwqe_dev* %7, i32 %8, i32 %10)
  %12 = load %struct.genwqe_dev*, %struct.genwqe_dev** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @__genwqe_readq(%struct.genwqe_dev* %12, i32 %13)
  ret i32 %14
}

declare dso_local i32 @__genwqe_writeq(%struct.genwqe_dev*, i32, i32) #1

declare dso_local i32 @__genwqe_readq(%struct.genwqe_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
