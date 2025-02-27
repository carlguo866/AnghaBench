; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_svm_get_rflags.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_svm_get_rflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vcpu_svm = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@X86_EFLAGS_TF = common dso_local global i64 0, align 8
@X86_EFLAGS_RF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kvm_vcpu*)* @svm_get_rflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @svm_get_rflags(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.vcpu_svm*, align 8
  %4 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %6 = call %struct.vcpu_svm* @to_svm(%struct.kvm_vcpu* %5)
  store %struct.vcpu_svm* %6, %struct.vcpu_svm** %3, align 8
  %7 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %8 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %7, i32 0, i32 2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %4, align 8
  %13 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %14 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %1
  %18 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %19 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @X86_EFLAGS_TF, align 8
  %22 = and i64 %20, %21
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load i64, i64* @X86_EFLAGS_TF, align 8
  %26 = xor i64 %25, -1
  %27 = load i64, i64* %4, align 8
  %28 = and i64 %27, %26
  store i64 %28, i64* %4, align 8
  br label %29

29:                                               ; preds = %24, %17
  %30 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %31 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @X86_EFLAGS_RF, align 8
  %34 = and i64 %32, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %29
  %37 = load i64, i64* @X86_EFLAGS_RF, align 8
  %38 = xor i64 %37, -1
  %39 = load i64, i64* %4, align 8
  %40 = and i64 %39, %38
  store i64 %40, i64* %4, align 8
  br label %41

41:                                               ; preds = %36, %29
  br label %42

42:                                               ; preds = %41, %1
  %43 = load i64, i64* %4, align 8
  ret i64 %43
}

declare dso_local %struct.vcpu_svm* @to_svm(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
