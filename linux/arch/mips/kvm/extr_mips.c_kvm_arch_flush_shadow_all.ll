; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_mips.c_kvm_arch_flush_shadow_all.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_mips.c_kvm_arch_flush_shadow_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.kvm*)* }
%struct.kvm = type { i32 }

@kvm_mips_callbacks = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_arch_flush_shadow_all(%struct.kvm* %0) #0 {
  %2 = alloca %struct.kvm*, align 8
  store %struct.kvm* %0, %struct.kvm** %2, align 8
  %3 = load %struct.kvm*, %struct.kvm** %2, align 8
  %4 = call i32 @kvm_mips_flush_gpa_pt(%struct.kvm* %3, i32 0, i32 -1)
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_mips_callbacks, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32 (%struct.kvm*)*, i32 (%struct.kvm*)** %6, align 8
  %8 = load %struct.kvm*, %struct.kvm** %2, align 8
  %9 = call i32 %7(%struct.kvm* %8)
  ret void
}

declare dso_local i32 @kvm_mips_flush_gpa_pt(%struct.kvm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
