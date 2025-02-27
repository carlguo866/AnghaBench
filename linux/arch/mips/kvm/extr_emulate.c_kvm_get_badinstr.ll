; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_emulate.c_kvm_get_badinstr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_emulate.c_kvm_get_badinstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@cpu_has_badinstr = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_get_badinstr(i32* %0, %struct.kvm_vcpu* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.kvm_vcpu* %1, %struct.kvm_vcpu** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i64, i64* @cpu_has_badinstr, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %12 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** %7, align 8
  store i32 %14, i32* %15, align 4
  store i32 0, i32* %4, align 4
  br label %21

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @kvm_get_inst(i32* %17, %struct.kvm_vcpu* %18, i32* %19)
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %16, %10
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

declare dso_local i32 @kvm_get_inst(i32*, %struct.kvm_vcpu*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
