; ModuleID = '/home/carl/AnghaBench/fastdfs/tracker/extr_tracker_mem.c_tracker_mem_remove_group.c'
source_filename = "/home/carl/AnghaBench/fastdfs/tracker/extr_tracker_mem.c_tracker_mem_remove_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@g_groups = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*)* @tracker_mem_remove_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tracker_mem_remove_group(i32** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  store i32** %0, i32*** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32**, i32*** %4, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_groups, i32 0, i32 0), align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32*, i32** %9, i64 %11
  store i32** %12, i32*** %7, align 8
  %13 = load i32**, i32*** %4, align 8
  store i32** %13, i32*** %6, align 8
  br label %14

14:                                               ; preds = %25, %2
  %15 = load i32**, i32*** %6, align 8
  %16 = load i32**, i32*** %7, align 8
  %17 = icmp ult i32** %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = load i32**, i32*** %6, align 8
  %20 = load i32*, i32** %19, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = icmp eq i32* %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %28

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24
  %26 = load i32**, i32*** %6, align 8
  %27 = getelementptr inbounds i32*, i32** %26, i32 1
  store i32** %27, i32*** %6, align 8
  br label %14

28:                                               ; preds = %23, %14
  %29 = load i32**, i32*** %6, align 8
  %30 = load i32**, i32*** %7, align 8
  %31 = icmp eq i32** %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @ENOENT, align 4
  store i32 %33, i32* %3, align 4
  br label %50

34:                                               ; preds = %28
  %35 = load i32**, i32*** %6, align 8
  %36 = getelementptr inbounds i32*, i32** %35, i64 1
  store i32** %36, i32*** %8, align 8
  br label %37

37:                                               ; preds = %46, %34
  %38 = load i32**, i32*** %8, align 8
  %39 = load i32**, i32*** %7, align 8
  %40 = icmp ult i32** %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = load i32**, i32*** %8, align 8
  %43 = load i32*, i32** %42, align 8
  %44 = load i32**, i32*** %8, align 8
  %45 = getelementptr inbounds i32*, i32** %44, i64 -1
  store i32* %43, i32** %45, align 8
  br label %46

46:                                               ; preds = %41
  %47 = load i32**, i32*** %8, align 8
  %48 = getelementptr inbounds i32*, i32** %47, i32 1
  store i32** %48, i32*** %8, align 8
  br label %37

49:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %32
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
