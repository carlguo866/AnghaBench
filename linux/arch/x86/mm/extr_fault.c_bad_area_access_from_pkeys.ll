; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_fault.c_bad_area_access_from_pkeys.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_fault.c_bad_area_access_from_pkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }

@X86_FEATURE_OSPKE = common dso_local global i32 0, align 4
@X86_PF_PK = common dso_local global i64 0, align 8
@X86_PF_WRITE = common dso_local global i64 0, align 8
@X86_PF_INSTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.vm_area_struct*)* @bad_area_access_from_pkeys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bad_area_access_from_pkeys(i64 %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @X86_FEATURE_OSPKE, align 4
  %8 = call i32 @boot_cpu_has(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %30

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @X86_PF_PK, align 8
  %14 = and i64 %12, %13
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %30

17:                                               ; preds = %11
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @X86_PF_WRITE, align 8
  %21 = and i64 %19, %20
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @X86_PF_INSTR, align 8
  %24 = and i64 %22, %23
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @arch_vma_access_permitted(%struct.vm_area_struct* %18, i64 %21, i64 %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %30

29:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %28, %16, %10
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @boot_cpu_has(i32) #1

declare dso_local i32 @arch_vma_access_permitted(%struct.vm_area_struct*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
