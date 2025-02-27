; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_xenbus.c_xen_vbd_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_xenbus.c_xen_vbd_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_vbd = type { i32*, i64 }

@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xen_vbd*)* @xen_vbd_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_vbd_free(%struct.xen_vbd* %0) #0 {
  %2 = alloca %struct.xen_vbd*, align 8
  store %struct.xen_vbd* %0, %struct.xen_vbd** %2, align 8
  %3 = load %struct.xen_vbd*, %struct.xen_vbd** %2, align 8
  %4 = getelementptr inbounds %struct.xen_vbd, %struct.xen_vbd* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = load %struct.xen_vbd*, %struct.xen_vbd** %2, align 8
  %9 = getelementptr inbounds %struct.xen_vbd, %struct.xen_vbd* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load %struct.xen_vbd*, %struct.xen_vbd** %2, align 8
  %12 = getelementptr inbounds %struct.xen_vbd, %struct.xen_vbd* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %7
  %16 = load i32, i32* @FMODE_READ, align 4
  br label %19

17:                                               ; preds = %7
  %18 = load i32, i32* @FMODE_WRITE, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %21 = call i32 @blkdev_put(i32* %10, i32 %20)
  br label %22

22:                                               ; preds = %19, %1
  %23 = load %struct.xen_vbd*, %struct.xen_vbd** %2, align 8
  %24 = getelementptr inbounds %struct.xen_vbd, %struct.xen_vbd* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  ret void
}

declare dso_local i32 @blkdev_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
