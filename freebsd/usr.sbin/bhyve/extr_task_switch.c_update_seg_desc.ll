; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_task_switch.c_update_seg_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_task_switch.c_update_seg_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.seg_desc = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmctx*, i32, i32, %struct.seg_desc*)* @update_seg_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_seg_desc(%struct.vmctx* %0, i32 %1, i32 %2, %struct.seg_desc* %3) #0 {
  %5 = alloca %struct.vmctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.seg_desc*, align 8
  %9 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.seg_desc* %3, %struct.seg_desc** %8, align 8
  %10 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.seg_desc*, %struct.seg_desc** %8, align 8
  %14 = getelementptr inbounds %struct.seg_desc, %struct.seg_desc* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.seg_desc*, %struct.seg_desc** %8, align 8
  %17 = getelementptr inbounds %struct.seg_desc, %struct.seg_desc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.seg_desc*, %struct.seg_desc** %8, align 8
  %20 = getelementptr inbounds %struct.seg_desc, %struct.seg_desc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @vm_set_desc(%struct.vmctx* %10, i32 %11, i32 %12, i32 %15, i32 %18, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  ret void
}

declare dso_local i32 @vm_set_desc(%struct.vmctx*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
