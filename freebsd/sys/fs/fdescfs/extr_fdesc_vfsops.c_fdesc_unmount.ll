; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fdescfs/extr_fdesc_vfsops.c_fdesc_unmount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fdescfs/extr_fdesc_vfsops.c_fdesc_unmount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { %struct.fdescmount* }
%struct.fdescmount = type { i32 }

@MNT_FORCE = common dso_local global i32 0, align 4
@fdesc_hashmtx = common dso_local global i32 0, align 4
@FMNT_UNMOUNTF = common dso_local global i32 0, align 4
@FORCECLOSE = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@M_FDESCMNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, i32)* @fdesc_unmount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdesc_unmount(%struct.mount* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mount*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fdescmount*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.mount*, %struct.mount** %4, align 8
  %10 = getelementptr inbounds %struct.mount, %struct.mount* %9, i32 0, i32 0
  %11 = load %struct.fdescmount*, %struct.fdescmount** %10, align 8
  store %struct.fdescmount* %11, %struct.fdescmount** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @MNT_FORCE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = call i32 @mtx_lock(i32* @fdesc_hashmtx)
  %18 = load i32, i32* @FMNT_UNMOUNTF, align 4
  %19 = load %struct.fdescmount*, %struct.fdescmount** %6, align 8
  %20 = getelementptr inbounds %struct.fdescmount, %struct.fdescmount* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = call i32 @mtx_unlock(i32* @fdesc_hashmtx)
  %24 = load i32, i32* @FORCECLOSE, align 4
  %25 = load i32, i32* %8, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %16, %2
  %28 = load %struct.mount*, %struct.mount** %4, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @curthread, align 4
  %31 = call i32 @vflush(%struct.mount* %28, i32 1, i32 %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %41

35:                                               ; preds = %27
  %36 = load %struct.mount*, %struct.mount** %4, align 8
  %37 = getelementptr inbounds %struct.mount, %struct.mount* %36, i32 0, i32 0
  store %struct.fdescmount* null, %struct.fdescmount** %37, align 8
  %38 = load %struct.fdescmount*, %struct.fdescmount** %6, align 8
  %39 = load i32, i32* @M_FDESCMNT, align 4
  %40 = call i32 @free(%struct.fdescmount* %38, i32 %39)
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %35, %33
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @vflush(%struct.mount*, i32, i32, i32) #1

declare dso_local i32 @free(%struct.fdescmount*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
