; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_cpuid.c___do_cpuid_func_emulated.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_cpuid.c___do_cpuid_func_emulated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_cpuid_entry2 = type { i32, i32, i8*, i64, i64 }

@MOVBE = common dso_local global i32 0, align 4
@KVM_CPUID_FLAG_SIGNIFCANT_INDEX = common dso_local global i64 0, align 8
@RDPID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_cpuid_entry2*, i32, i32*, i32)* @__do_cpuid_func_emulated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__do_cpuid_func_emulated(%struct.kvm_cpuid_entry2* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.kvm_cpuid_entry2*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.kvm_cpuid_entry2* %0, %struct.kvm_cpuid_entry2** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %5, align 8
  %11 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %5, align 8
  %13 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %12, i32 0, i32 4
  store i64 0, i64* %13, align 8
  %14 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %5, align 8
  %15 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %14, i32 0, i32 3
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %46 [
    i32 0, label %17
    i32 1, label %23
    i32 7, label %31
  ]

17:                                               ; preds = %4
  %18 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %5, align 8
  %19 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %18, i32 0, i32 1
  store i32 7, i32* %19, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  br label %47

23:                                               ; preds = %4
  %24 = load i32, i32* @MOVBE, align 4
  %25 = call i8* @F(i32 %24)
  %26 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %5, align 8
  %27 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  br label %47

31:                                               ; preds = %4
  %32 = load i64, i64* @KVM_CPUID_FLAG_SIGNIFCANT_INDEX, align 8
  %33 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %5, align 8
  %34 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = or i64 %35, %32
  store i64 %36, i64* %34, align 8
  %37 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %5, align 8
  %38 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %37, i32 0, i32 1
  store i32 0, i32* %38, align 4
  %39 = load i32, i32* @RDPID, align 4
  %40 = call i8* @F(i32 %39)
  %41 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %5, align 8
  %42 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %4, %31
  br label %47

47:                                               ; preds = %46, %23, %17
  ret i32 0
}

declare dso_local i8* @F(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
