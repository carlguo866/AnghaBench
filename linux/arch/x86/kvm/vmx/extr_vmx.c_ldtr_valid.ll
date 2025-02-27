; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_ldtr_valid.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_ldtr_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_segment = type { i32, i32, i32, i64 }

@VCPU_SREG_LDTR = common dso_local global i32 0, align 4
@SEGMENT_TI_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @ldtr_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldtr_valid(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_segment, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %6 = load i32, i32* @VCPU_SREG_LDTR, align 4
  %7 = call i32 @vmx_get_segment(%struct.kvm_vcpu* %5, %struct.kvm_segment* %4, i32 %6)
  %8 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %4, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %30

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %4, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @SEGMENT_TI_MASK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %30

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %4, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 2
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %30

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %4, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %30

29:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %28, %23, %18, %11
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @vmx_get_segment(%struct.kvm_vcpu*, %struct.kvm_segment*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
