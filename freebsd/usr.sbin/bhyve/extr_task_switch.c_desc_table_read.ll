; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_task_switch.c_desc_table_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_task_switch.c_desc_table_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.vm_guest_paging = type { i32 }
%struct.user_segment_descriptor = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, i32, %struct.vm_guest_paging*, i32, %struct.user_segment_descriptor*, i32*)* @desc_table_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @desc_table_read(%struct.vmctx* %0, i32 %1, %struct.vm_guest_paging* %2, i32 %3, %struct.user_segment_descriptor* %4, i32* %5) #0 {
  %7 = alloca %struct.vmctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vm_guest_paging*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.user_segment_descriptor*, align 8
  %12 = alloca i32*, align 8
  store %struct.vmctx* %0, %struct.vmctx** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.vm_guest_paging* %2, %struct.vm_guest_paging** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.user_segment_descriptor* %4, %struct.user_segment_descriptor** %11, align 8
  store i32* %5, i32** %12, align 8
  %13 = load %struct.vmctx*, %struct.vmctx** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.vm_guest_paging*, %struct.vm_guest_paging** %9, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %11, align 8
  %18 = load i32*, i32** %12, align 8
  %19 = call i32 @desc_table_rw(%struct.vmctx* %13, i32 %14, %struct.vm_guest_paging* %15, i32 %16, %struct.user_segment_descriptor* %17, i32 1, i32* %18)
  ret i32 %19
}

declare dso_local i32 @desc_table_rw(%struct.vmctx*, i32, %struct.vm_guest_paging*, i32, %struct.user_segment_descriptor*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
