; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_file.c_cifs_page_mkwrite.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_file.c_cifs_page_mkwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }
%struct.vm_fault = type { %struct.page* }
%struct.page = type { i32 }

@VM_FAULT_LOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, %struct.vm_fault*)* @cifs_page_mkwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_page_mkwrite(%struct.vm_area_struct* %0, %struct.vm_fault* %1) #0 {
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca %struct.vm_fault*, align 8
  %5 = alloca %struct.page*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  store %struct.vm_fault* %1, %struct.vm_fault** %4, align 8
  %6 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %7 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %6, i32 0, i32 0
  %8 = load %struct.page*, %struct.page** %7, align 8
  store %struct.page* %8, %struct.page** %5, align 8
  %9 = load %struct.page*, %struct.page** %5, align 8
  %10 = call i32 @lock_page(%struct.page* %9)
  %11 = load i32, i32* @VM_FAULT_LOCKED, align 4
  ret i32 %11
}

declare dso_local i32 @lock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
