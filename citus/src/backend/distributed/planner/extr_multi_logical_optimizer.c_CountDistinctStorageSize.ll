; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_logical_optimizer.c_CountDistinctStorageSize.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_logical_optimizer.c_CountDistinctStorageSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double)* @CountDistinctStorageSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CountDistinctStorageSize(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  store double %0, double* %2, align 8
  %6 = load double, double* %2, align 8
  %7 = fdiv double 1.040000e+00, %6
  %8 = call double @pow(double %7, i32 2)
  store double %8, double* %3, align 8
  %9 = load double, double* %3, align 8
  %10 = fptosi double %9 to i32
  %11 = call double @log(i32 %10)
  %12 = call double @log(i32 2)
  %13 = fdiv double %11, %12
  store double %13, double* %4, align 8
  %14 = load double, double* %4, align 8
  %15 = call i64 @rint(double %14)
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 4, i32* %5, align 4
  br label %25

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = icmp sgt i32 %21, 17
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 17, i32* %5, align 4
  br label %24

24:                                               ; preds = %23, %20
  br label %25

25:                                               ; preds = %24, %19
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local double @pow(double, i32) #1

declare dso_local double @log(i32) #1

declare dso_local i64 @rint(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
