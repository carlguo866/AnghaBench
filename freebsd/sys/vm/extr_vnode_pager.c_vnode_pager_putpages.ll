; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vnode_pager.c_vnode_pager_putpages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vnode_pager.c_vnode_pager_putpages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.vnode* }
%struct.vnode = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@VM_PAGER_PUT_SYNC = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"vnode_pager: stale FS putpages\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i32, i32, i32*)* @vnode_pager_putpages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vnode_pager_putpages(%struct.TYPE_5__* %0, i32* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.vnode*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = mul nsw i32 %14, %15
  store i32 %16, i32* %13, align 4
  %17 = call i64 (...) @vm_page_count_min()
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = load i32, i32* @VM_PAGER_PUT_SYNC, align 4
  %21 = load i32, i32* %9, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %19, %5
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.vnode*, %struct.vnode** %25, align 8
  store %struct.vnode* %26, %struct.vnode** %12, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_5__* %27)
  %29 = load %struct.vnode*, %struct.vnode** %12, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @VOP_PUTPAGES(%struct.vnode* %29, i32* %30, i32 %31, i32 %32, i32* %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @EOPNOTSUPP, align 4
  %37 = icmp ne i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @KASSERT(i32 %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %41 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_5__* %40)
  ret void
}

declare dso_local i64 @vm_page_count_min(...) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_5__*) #1

declare dso_local i32 @VOP_PUTPAGES(%struct.vnode*, i32*, i32, i32, i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @VM_OBJECT_WLOCK(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
