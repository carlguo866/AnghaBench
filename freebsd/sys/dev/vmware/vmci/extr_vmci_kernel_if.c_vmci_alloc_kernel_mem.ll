; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_kernel_if.c_vmci_alloc_kernel_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_kernel_if.c_vmci_alloc_kernel_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VMCI_MEMORY_ATOMIC = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vmci_alloc_kernel_mem(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @VMCI_MEMORY_ATOMIC, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i64, i64* %3, align 8
  %12 = load i32, i32* @M_DEVBUF, align 4
  %13 = load i32, i32* @M_NOWAIT, align 4
  %14 = call i8* @contigmalloc(i64 %11, i32 %12, i32 %13, i32 0, i32 -1, i32 8, i32 1048576)
  store i8* %14, i8** %5, align 8
  br label %20

15:                                               ; preds = %2
  %16 = load i64, i64* %3, align 8
  %17 = load i32, i32* @M_DEVBUF, align 4
  %18 = load i32, i32* @M_WAITOK, align 4
  %19 = call i8* @contigmalloc(i64 %16, i32 %17, i32 %18, i32 0, i32 -1, i32 8, i32 1048576)
  store i8* %19, i8** %5, align 8
  br label %20

20:                                               ; preds = %15, %10
  %21 = load i8*, i8** %5, align 8
  ret i8* %21
}

declare dso_local i8* @contigmalloc(i64, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
