; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_bdg.c_netmap_uninit_bridges2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_bdg.c_netmap_uninit_bridges2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nm_bridge = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netmap_uninit_bridges2(%struct.nm_bridge* %0, i32 %1) #0 {
  %3 = alloca %struct.nm_bridge*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nm_bridge* %0, %struct.nm_bridge** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nm_bridge*, %struct.nm_bridge** %3, align 8
  %7 = icmp eq %struct.nm_bridge* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %26

9:                                                ; preds = %2
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %20, %9
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = load %struct.nm_bridge*, %struct.nm_bridge** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.nm_bridge, %struct.nm_bridge* %15, i64 %17
  %19 = call i32 @BDG_RWDESTROY(%struct.nm_bridge* %18)
  br label %20

20:                                               ; preds = %14
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %10

23:                                               ; preds = %10
  %24 = load %struct.nm_bridge*, %struct.nm_bridge** %3, align 8
  %25 = call i32 @nm_os_free(%struct.nm_bridge* %24)
  br label %26

26:                                               ; preds = %23, %8
  ret void
}

declare dso_local i32 @BDG_RWDESTROY(%struct.nm_bridge*) #1

declare dso_local i32 @nm_os_free(%struct.nm_bridge*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
