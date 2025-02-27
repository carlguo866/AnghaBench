; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_kvm_fw.c_pal_proc_get_features.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_kvm_fw.c_pal_proc_get_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ia64_pal_retval = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.kvm_vcpu = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ia64_pal_retval*, %struct.kvm_vcpu*)* @pal_proc_get_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pal_proc_get_features(%struct.ia64_pal_retval* noalias sret %0, %struct.kvm_vcpu* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.kvm_vcpu* %1, %struct.kvm_vcpu** %3, align 8
  %8 = bitcast %struct.ia64_pal_retval* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 32, i1 false)
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %10 = call i32 @kvm_get_pal_call_data(%struct.kvm_vcpu* %9, i64* %4, i64* %5, i64* %6, i64* %7)
  %11 = getelementptr inbounds %struct.ia64_pal_retval, %struct.ia64_pal_retval* %0, i32 0, i32 2
  %12 = getelementptr inbounds %struct.ia64_pal_retval, %struct.ia64_pal_retval* %0, i32 0, i32 1
  %13 = getelementptr inbounds %struct.ia64_pal_retval, %struct.ia64_pal_retval* %0, i32 0, i32 0
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @ia64_pal_proc_get_features(i32* %11, i32* %12, i32* %13, i64 %14)
  %16 = getelementptr inbounds %struct.ia64_pal_retval, %struct.ia64_pal_retval* %0, i32 0, i32 3
  store i32 %15, i32* %16, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @kvm_get_pal_call_data(%struct.kvm_vcpu*, i64*, i64*, i64*, i64*) #2

declare dso_local i32 @ia64_pal_proc_get_features(i32*, i32*, i32*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
