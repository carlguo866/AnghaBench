; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_emulate.c_kvmppc_set_bat.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_emulate.c_kvmppc_set_bat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvmppc_bat = type { i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvmppc_set_bat(%struct.kvm_vcpu* %0, %struct.kvmppc_bat* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca %struct.kvmppc_bat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store %struct.kvmppc_bat* %1, %struct.kvmppc_bat** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %50

12:                                               ; preds = %4
  %13 = load i32, i32* %8, align 4
  %14 = ashr i32 %13, 2
  %15 = and i32 %14, 2047
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = xor i32 %16, -1
  %18 = shl i32 %17, 17
  %19 = load %struct.kvmppc_bat*, %struct.kvmppc_bat** %6, align 8
  %20 = getelementptr inbounds %struct.kvmppc_bat, %struct.kvmppc_bat* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %8, align 4
  %22 = and i32 %21, -131072
  %23 = load %struct.kvmppc_bat*, %struct.kvmppc_bat** %6, align 8
  %24 = getelementptr inbounds %struct.kvmppc_bat, %struct.kvmppc_bat* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %8, align 4
  %26 = and i32 %25, 2
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 1, i32 0
  %30 = load %struct.kvmppc_bat*, %struct.kvmppc_bat** %6, align 8
  %31 = getelementptr inbounds %struct.kvmppc_bat, %struct.kvmppc_bat* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %32, 1
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 1, i32 0
  %37 = load %struct.kvmppc_bat*, %struct.kvmppc_bat** %6, align 8
  %38 = getelementptr inbounds %struct.kvmppc_bat, %struct.kvmppc_bat* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load %struct.kvmppc_bat*, %struct.kvmppc_bat** %6, align 8
  %40 = getelementptr inbounds %struct.kvmppc_bat, %struct.kvmppc_bat* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = and i64 %42, -4294967296
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = or i64 %43, %45
  %47 = trunc i64 %46 to i32
  %48 = load %struct.kvmppc_bat*, %struct.kvmppc_bat** %6, align 8
  %49 = getelementptr inbounds %struct.kvmppc_bat, %struct.kvmppc_bat* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 4
  br label %76

50:                                               ; preds = %4
  %51 = load i32, i32* %8, align 4
  %52 = and i32 %51, -131072
  %53 = load %struct.kvmppc_bat*, %struct.kvmppc_bat** %6, align 8
  %54 = getelementptr inbounds %struct.kvmppc_bat, %struct.kvmppc_bat* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %8, align 4
  %56 = ashr i32 %55, 3
  %57 = and i32 %56, 15
  %58 = load %struct.kvmppc_bat*, %struct.kvmppc_bat** %6, align 8
  %59 = getelementptr inbounds %struct.kvmppc_bat, %struct.kvmppc_bat* %58, i32 0, i32 6
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %8, align 4
  %61 = and i32 %60, 3
  %62 = load %struct.kvmppc_bat*, %struct.kvmppc_bat** %6, align 8
  %63 = getelementptr inbounds %struct.kvmppc_bat, %struct.kvmppc_bat* %62, i32 0, i32 7
  store i32 %61, i32* %63, align 4
  %64 = load %struct.kvmppc_bat*, %struct.kvmppc_bat** %6, align 8
  %65 = getelementptr inbounds %struct.kvmppc_bat, %struct.kvmppc_bat* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = and i64 %67, 4294967295
  %69 = load i32, i32* %8, align 4
  %70 = shl i32 %69, 32
  %71 = sext i32 %70 to i64
  %72 = or i64 %68, %71
  %73 = trunc i64 %72 to i32
  %74 = load %struct.kvmppc_bat*, %struct.kvmppc_bat** %6, align 8
  %75 = getelementptr inbounds %struct.kvmppc_bat, %struct.kvmppc_bat* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %50, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
