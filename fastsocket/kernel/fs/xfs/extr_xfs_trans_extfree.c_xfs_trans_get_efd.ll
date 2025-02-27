; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_trans_extfree.c_xfs_trans_get_efd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_trans_extfree.c_xfs_trans_get_efd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @xfs_trans_get_efd(%struct.TYPE_7__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = icmp ne %struct.TYPE_7__* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @ASSERT(i32 %10)
  %12 = load i64, i64* %6, align 8
  %13 = icmp sgt i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call %struct.TYPE_8__* @xfs_efd_init(i32 %18, i32* %19, i64 %20)
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %7, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %23 = icmp ne %struct.TYPE_8__* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = call i32 @xfs_trans_add_item(%struct.TYPE_7__* %26, i32* %28)
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  ret %struct.TYPE_8__* %30
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.TYPE_8__* @xfs_efd_init(i32, i32*, i64) #1

declare dso_local i32 @xfs_trans_add_item(%struct.TYPE_7__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
