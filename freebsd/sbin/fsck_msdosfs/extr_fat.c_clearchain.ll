; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_msdosfs/extr_fat.c_clearchain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_msdosfs/extr_fat.c_clearchain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bootblock = type { i64 }
%struct.fatEntry = type { i64, i64, i64 }

@CLUST_FIRST = common dso_local global i64 0, align 8
@CLUST_FREE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clearchain(%struct.bootblock* %0, %struct.fatEntry* %1, i64 %2) #0 {
  %4 = alloca %struct.bootblock*, align 8
  %5 = alloca %struct.fatEntry*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.bootblock* %0, %struct.bootblock** %4, align 8
  store %struct.fatEntry* %1, %struct.fatEntry** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  store i64 %9, i64* %7, align 8
  br label %10

10:                                               ; preds = %50, %3
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @CLUST_FIRST, align 8
  %13 = icmp uge i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.bootblock*, %struct.bootblock** %4, align 8
  %17 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %15, %18
  br label %20

20:                                               ; preds = %14, %10
  %21 = phi i1 [ false, %10 ], [ %19, %14 ]
  br i1 %21, label %22, label %52

22:                                               ; preds = %20
  %23 = load %struct.fatEntry*, %struct.fatEntry** %5, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %23, i64 %24
  %26 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %52

31:                                               ; preds = %22
  %32 = load %struct.fatEntry*, %struct.fatEntry** %5, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %32, i64 %33
  %35 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* @CLUST_FREE, align 8
  %38 = load %struct.fatEntry*, %struct.fatEntry** %5, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %38, i64 %39
  %41 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %40, i32 0, i32 0
  store i64 %37, i64* %41, align 8
  %42 = load %struct.fatEntry*, %struct.fatEntry** %5, align 8
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %42, i64 %43
  %45 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %44, i32 0, i32 1
  store i64 %37, i64* %45, align 8
  %46 = load %struct.fatEntry*, %struct.fatEntry** %5, align 8
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %46, i64 %47
  %49 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %48, i32 0, i32 2
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %31
  %51 = load i64, i64* %8, align 8
  store i64 %51, i64* %7, align 8
  br label %10

52:                                               ; preds = %30, %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
