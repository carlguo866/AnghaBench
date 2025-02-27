; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_exception_type.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_exception_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NMI_VECTOR = common dso_local global i32 0, align 4
@EXCPT_INTERRUPT = common dso_local global i32 0, align 4
@DB_VECTOR = common dso_local global i32 0, align 4
@BP_VECTOR = common dso_local global i32 0, align 4
@OF_VECTOR = common dso_local global i32 0, align 4
@EXCPT_TRAP = common dso_local global i32 0, align 4
@DF_VECTOR = common dso_local global i32 0, align 4
@MC_VECTOR = common dso_local global i32 0, align 4
@EXCPT_ABORT = common dso_local global i32 0, align 4
@EXCPT_FAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @exception_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exception_type(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp sgt i32 %5, 31
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @NMI_VECTOR, align 4
  %10 = icmp eq i32 %8, %9
  br label %11

11:                                               ; preds = %7, %1
  %12 = phi i1 [ true, %1 ], [ %10, %7 ]
  %13 = zext i1 %12 to i32
  %14 = call i64 @WARN_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* @EXCPT_INTERRUPT, align 4
  store i32 %17, i32* %2, align 4
  br label %47

18:                                               ; preds = %11
  %19 = load i32, i32* %3, align 4
  %20 = shl i32 1, %19
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @DB_VECTOR, align 4
  %23 = shl i32 1, %22
  %24 = load i32, i32* @BP_VECTOR, align 4
  %25 = shl i32 1, %24
  %26 = or i32 %23, %25
  %27 = load i32, i32* @OF_VECTOR, align 4
  %28 = shl i32 1, %27
  %29 = or i32 %26, %28
  %30 = and i32 %21, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %18
  %33 = load i32, i32* @EXCPT_TRAP, align 4
  store i32 %33, i32* %2, align 4
  br label %47

34:                                               ; preds = %18
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @DF_VECTOR, align 4
  %37 = shl i32 1, %36
  %38 = load i32, i32* @MC_VECTOR, align 4
  %39 = shl i32 1, %38
  %40 = or i32 %37, %39
  %41 = and i32 %35, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* @EXCPT_ABORT, align 4
  store i32 %44, i32* %2, align 4
  br label %47

45:                                               ; preds = %34
  %46 = load i32, i32* @EXCPT_FAULT, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %43, %32, %16
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
