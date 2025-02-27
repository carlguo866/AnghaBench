; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_init.c_vfs_fhtovp_sigdefer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_init.c_vfs_fhtovp_sigdefer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }
%struct.fid = type { i32 }
%struct.vnode = type { i32 }

@SIGDEFERSTOP_SILENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, %struct.fid*, i32, %struct.vnode**)* @vfs_fhtovp_sigdefer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfs_fhtovp_sigdefer(%struct.mount* %0, %struct.fid* %1, i32 %2, %struct.vnode** %3) #0 {
  %5 = alloca %struct.mount*, align 8
  %6 = alloca %struct.fid*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vnode**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %5, align 8
  store %struct.fid* %1, %struct.fid** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.vnode** %3, %struct.vnode*** %8, align 8
  %11 = load i32, i32* @SIGDEFERSTOP_SILENT, align 4
  %12 = call i32 @sigdeferstop(i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load %struct.mount*, %struct.mount** %5, align 8
  %14 = getelementptr inbounds %struct.mount, %struct.mount* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = bitcast {}** %18 to i32 (%struct.mount*, %struct.fid*, i32, %struct.vnode**)**
  %20 = load i32 (%struct.mount*, %struct.fid*, i32, %struct.vnode**)*, i32 (%struct.mount*, %struct.fid*, i32, %struct.vnode**)** %19, align 8
  %21 = load %struct.mount*, %struct.mount** %5, align 8
  %22 = load %struct.fid*, %struct.fid** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.vnode**, %struct.vnode*** %8, align 8
  %25 = call i32 %20(%struct.mount* %21, %struct.fid* %22, i32 %23, %struct.vnode** %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @sigallowstop(i32 %26)
  %28 = load i32, i32* %10, align 4
  ret i32 %28
}

declare dso_local i32 @sigdeferstop(i32) #1

declare dso_local i32 @sigallowstop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
