; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mtrr/extr_centaur.c_centaur_set_mcr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mtrr/extr_centaur.c_centaur_set_mcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@centaur_mcr_type = common dso_local global i64 0, align 8
@MTRR_TYPE_UNCACHABLE = common dso_local global i64 0, align 8
@centaur_mcr = common dso_local global %struct.TYPE_2__* null, align 8
@MSR_IDT_MCR0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64, i64)* @centaur_set_mcr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @centaur_set_mcr(i32 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %44

14:                                               ; preds = %4
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @PAGE_SHIFT, align 8
  %17 = shl i64 %15, %16
  store i64 %17, i64* %10, align 8
  %18 = load i64, i64* @centaur_mcr_type, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load i64, i64* %7, align 8
  %22 = sub i64 0, %21
  %23 = load i64, i64* @PAGE_SHIFT, align 8
  %24 = shl i64 %22, %23
  %25 = or i64 %24, 31
  store i64 %25, i64* %9, align 8
  br label %43

26:                                               ; preds = %14
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @MTRR_TYPE_UNCACHABLE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i64, i64* %7, align 8
  %32 = sub i64 0, %31
  %33 = load i64, i64* @PAGE_SHIFT, align 8
  %34 = shl i64 %32, %33
  %35 = or i64 %34, 2
  store i64 %35, i64* %9, align 8
  br label %42

36:                                               ; preds = %26
  %37 = load i64, i64* %7, align 8
  %38 = sub i64 0, %37
  %39 = load i64, i64* @PAGE_SHIFT, align 8
  %40 = shl i64 %38, %39
  %41 = or i64 %40, 9
  store i64 %41, i64* %9, align 8
  br label %42

42:                                               ; preds = %36, %30
  br label %43

43:                                               ; preds = %42, %20
  br label %44

44:                                               ; preds = %43, %13
  %45 = load i64, i64* %10, align 8
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @centaur_mcr, align 8
  %47 = load i32, i32* %5, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i64 %45, i64* %50, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @centaur_mcr, align 8
  %53 = load i32, i32* %5, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  store i64 %51, i64* %56, align 8
  %57 = load i64, i64* @MSR_IDT_MCR0, align 8
  %58 = load i32, i32* %5, align 4
  %59 = zext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %10, align 8
  %63 = call i32 @wrmsr(i64 %60, i64 %61, i64 %62)
  ret void
}

declare dso_local i32 @wrmsr(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
