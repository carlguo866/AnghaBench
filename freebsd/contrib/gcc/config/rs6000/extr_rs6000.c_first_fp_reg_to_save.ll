; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_first_fp_reg_to_save.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_first_fp_reg_to_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@regs_ever_live = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @first_fp_reg_to_save() #0 {
  %1 = alloca i32, align 4
  store i32 46, i32* %1, align 4
  br label %2

2:                                                ; preds = %14, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp sle i32 %3, 63
  br i1 %4, label %5, label %17

5:                                                ; preds = %2
  %6 = load i64*, i64** @regs_ever_live, align 8
  %7 = load i32, i32* %1, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i64, i64* %6, i64 %8
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %5
  br label %17

13:                                               ; preds = %5
  br label %14

14:                                               ; preds = %13
  %15 = load i32, i32* %1, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %1, align 4
  br label %2

17:                                               ; preds = %12, %2
  %18 = load i32, i32* %1, align 4
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
