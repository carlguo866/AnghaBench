; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_lapic.c_kvm_apic_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_lapic.c_kvm_apic_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_lapic = type { i32 }

@APIC_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_lapic*)* @kvm_apic_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_apic_id(%struct.kvm_lapic* %0) #0 {
  %2 = alloca %struct.kvm_lapic*, align 8
  store %struct.kvm_lapic* %0, %struct.kvm_lapic** %2, align 8
  %3 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %4 = load i32, i32* @APIC_ID, align 4
  %5 = call i32 @apic_get_reg(%struct.kvm_lapic* %3, i32 %4)
  %6 = ashr i32 %5, 24
  %7 = and i32 %6, 255
  ret i32 %7
}

declare dso_local i32 @apic_get_reg(%struct.kvm_lapic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
