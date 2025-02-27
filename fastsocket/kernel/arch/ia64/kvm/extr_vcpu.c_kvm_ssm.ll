; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vcpu.c_kvm_ssm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vcpu.c_kvm_ssm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_ssm(%struct.kvm_vcpu* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__, align 4
  %5 = alloca { i64, i32 }, align 4
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i32 0, i32 0
  store i64 %1, i64* %9, align 4
  %10 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i32 0, i32 1
  store i32 %2, i32* %10, align 4
  %11 = bitcast %struct.TYPE_5__* %4 to i8*
  %12 = bitcast { i64, i32 }* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 12, i1 false)
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = shl i32 %15, 23
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %19, 21
  %21 = or i32 %16, %20
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %21, %24
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %8, align 8
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %28 = call i64 @vcpu_get_psr(%struct.kvm_vcpu* %27)
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %7, align 8
  %31 = or i64 %30, %29
  store i64 %31, i64* %7, align 8
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @vcpu_set_psr(%struct.kvm_vcpu* %32, i64 %33)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @vcpu_get_psr(%struct.kvm_vcpu*) #2

declare dso_local i32 @vcpu_set_psr(%struct.kvm_vcpu*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
