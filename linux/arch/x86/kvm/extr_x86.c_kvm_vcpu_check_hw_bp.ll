; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_vcpu_check_hw_bp.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_vcpu_check_hw_bp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32, i64*)* @kvm_vcpu_check_hw_bp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_vcpu_check_hw_bp(i64 %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64* %3, i64** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %7, align 4
  %15 = ashr i32 %14, 16
  store i32 %15, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %42, %4
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %49

19:                                               ; preds = %16
  %20 = load i32, i32* %11, align 4
  %21 = and i32 %20, 3
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %19
  %24 = load i32, i32* %12, align 4
  %25 = and i32 %24, 15
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %23
  %29 = load i64*, i64** %8, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load i32, i32* %10, align 4
  %38 = shl i32 1, %37
  %39 = load i32, i32* %9, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %36, %28, %23, %19
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = ashr i32 %45, 2
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = ashr i32 %47, 4
  store i32 %48, i32* %12, align 4
  br label %16

49:                                               ; preds = %16
  %50 = load i32, i32* %9, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
