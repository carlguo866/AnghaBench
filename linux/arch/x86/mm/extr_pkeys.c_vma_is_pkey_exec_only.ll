; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_pkeys.c_vma_is_pkey_exec_only.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_pkeys.c_vma_is_pkey_exec_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@VM_READ = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*)* @vma_is_pkey_exec_only to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vma_is_pkey_exec_only(%struct.vm_area_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_area_struct*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  %4 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %5 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @VM_READ, align 4
  %8 = load i32, i32* @VM_WRITE, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @VM_EXEC, align 4
  %11 = or i32 %9, %10
  %12 = and i32 %6, %11
  %13 = load i32, i32* @VM_EXEC, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

16:                                               ; preds = %1
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %18 = call i64 @vma_pkey(%struct.vm_area_struct* %17)
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %20 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %18, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %28

27:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %26, %15
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i64 @vma_pkey(%struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
