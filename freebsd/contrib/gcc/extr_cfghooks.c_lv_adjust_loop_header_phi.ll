; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfghooks.c_lv_adjust_loop_header_phi.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfghooks.c_lv_adjust_loop_header_phi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32, i32, i32)* }

@cfg_hooks = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lv_adjust_loop_header_phi(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg_hooks, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %10, align 8
  %12 = icmp ne i32 (i32, i32, i32, i32)* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg_hooks, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 %16(i32 %17, i32 %18, i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %13, %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
