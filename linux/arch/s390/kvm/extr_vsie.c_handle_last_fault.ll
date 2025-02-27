; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_vsie.c_handle_last_fault.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_vsie.c_handle_last_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vsie_page = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.vsie_page*)* @handle_last_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_last_fault(%struct.kvm_vcpu* %0, %struct.vsie_page* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.vsie_page*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.vsie_page* %1, %struct.vsie_page** %4, align 8
  %5 = load %struct.vsie_page*, %struct.vsie_page** %4, align 8
  %6 = getelementptr inbounds %struct.vsie_page, %struct.vsie_page* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %11 = load %struct.vsie_page*, %struct.vsie_page** %4, align 8
  %12 = getelementptr inbounds %struct.vsie_page, %struct.vsie_page* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.vsie_page*, %struct.vsie_page** %4, align 8
  %15 = getelementptr inbounds %struct.vsie_page, %struct.vsie_page* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @kvm_s390_shadow_fault(%struct.kvm_vcpu* %10, i32 %13, i64 %16)
  br label %18

18:                                               ; preds = %9, %2
  %19 = load %struct.vsie_page*, %struct.vsie_page** %4, align 8
  %20 = getelementptr inbounds %struct.vsie_page, %struct.vsie_page* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  ret void
}

declare dso_local i32 @kvm_s390_shadow_fault(%struct.kvm_vcpu*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
