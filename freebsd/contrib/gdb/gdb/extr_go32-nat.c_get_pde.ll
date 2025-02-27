; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_go32-nat.c_get_pde.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_go32-nat.c_get_pde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pdbr = common dso_local global i64 0, align 8
@_dos_ds = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @get_pde to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_pde(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i64 0, i64* %3, align 8
  %4 = load i64, i64* @pdbr, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %6
  %10 = load i32, i32* %2, align 4
  %11 = icmp slt i32 %10, 1024
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = load i32, i32* @_dos_ds, align 4
  %14 = load i64, i64* @pdbr, align 8
  %15 = load i32, i32* %2, align 4
  %16 = mul nsw i32 4, %15
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %14, %17
  %19 = call i64 @_farpeekl(i32 %13, i64 %18)
  store i64 %19, i64* %3, align 8
  br label %20

20:                                               ; preds = %12, %9, %6, %1
  %21 = load i64, i64* %3, align 8
  ret i64 %21
}

declare dso_local i64 @_farpeekl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
