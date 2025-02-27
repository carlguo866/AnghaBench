; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cluster.c_cluster_wbuild_wb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cluster.c_cluster_wbuild_wb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }

@write_behind = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, i64, i32, i32, i32)* @cluster_wbuild_wb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cluster_wbuild_wb(%struct.vnode* %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* @write_behind, align 4
  switch i32 %12, label %29 [
    i32 2, label %13
    i32 1, label %22
  ]

13:                                               ; preds = %5
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %30

18:                                               ; preds = %13
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %8, align 4
  %21 = sub nsw i32 %20, %19
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %5, %18
  %23 = load %struct.vnode*, %struct.vnode** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @cluster_wbuild(%struct.vnode* %23, i64 %24, i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %5, %22
  br label %30

30:                                               ; preds = %29, %17
  %31 = load i32, i32* %11, align 4
  ret i32 %31
}

declare dso_local i32 @cluster_wbuild(%struct.vnode*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
