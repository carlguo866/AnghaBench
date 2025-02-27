; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/mpi/extr_mpi-add.c_mpi_addm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/mpi/extr_mpi-add.c_mpi_addm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpi_addm(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i64 @mpi_add(i32 %10, i32 %11, i32 %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i64 @mpi_fdiv_r(i32 %16, i32 %17, i32 %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15, %4
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %25

24:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %24, %21
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local i64 @mpi_add(i32, i32, i32) #1

declare dso_local i64 @mpi_fdiv_r(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
