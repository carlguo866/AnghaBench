; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_is_erratum_383.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_is_erratum_383.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@erratum_383_found = common dso_local global i32 0, align 4
@MSR_IA32_MC0_STATUS = common dso_local global i32 0, align 4
@MSR_IA32_MCG_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @is_erratum_383 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_erratum_383() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @erratum_383_found, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %51

10:                                               ; preds = %0
  %11 = load i32, i32* @MSR_IA32_MC0_STATUS, align 4
  %12 = call i64 @native_read_msr_safe(i32 %11, i32* %2)
  store i64 %12, i64* %4, align 8
  %13 = load i32, i32* %2, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 0, i32* %1, align 4
  br label %51

16:                                               ; preds = %10
  %17 = load i64, i64* %4, align 8
  %18 = and i64 %17, -4611686018427387905
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp ne i64 %19, -5332261958806601707
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 0, i32* %1, align 4
  br label %51

22:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %30, %22
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %24, 6
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @MSR_IA32_MCx_STATUS(i32 %27)
  %29 = call i32 @native_write_msr_safe(i32 %28, i32 0, i32 0)
  br label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %23

33:                                               ; preds = %23
  %34 = load i32, i32* @MSR_IA32_MCG_STATUS, align 4
  %35 = call i64 @native_read_msr_safe(i32 %34, i32* %2)
  store i64 %35, i64* %4, align 8
  %36 = load i32, i32* %2, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %33
  %39 = load i64, i64* %4, align 8
  %40 = and i64 %39, -5
  store i64 %40, i64* %4, align 8
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @lower_32_bits(i64 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @upper_32_bits(i64 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* @MSR_IA32_MCG_STATUS, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @native_write_msr_safe(i32 %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %38, %33
  %50 = call i32 (...) @__flush_tlb_all()
  store i32 1, i32* %1, align 4
  br label %51

51:                                               ; preds = %49, %21, %15, %9
  %52 = load i32, i32* %1, align 4
  ret i32 %52
}

declare dso_local i64 @native_read_msr_safe(i32, i32*) #1

declare dso_local i32 @native_write_msr_safe(i32, i32, i32) #1

declare dso_local i32 @MSR_IA32_MCx_STATUS(i32) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @__flush_tlb_all(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
