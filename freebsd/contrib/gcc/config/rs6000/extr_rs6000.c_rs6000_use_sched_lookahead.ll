; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_use_sched_lookahead.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_use_sched_lookahead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rs6000_cpu_attr = common dso_local global i64 0, align 8
@CPU_PPC8540 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @rs6000_use_sched_lookahead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs6000_use_sched_lookahead() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @rs6000_cpu_attr, align 8
  %3 = load i64, i64* @CPU_PPC8540, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 4, i32* %1, align 4
  br label %7

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %7

7:                                                ; preds = %6, %5
  %8 = load i32, i32* %1, align 4
  ret i32 %8
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
