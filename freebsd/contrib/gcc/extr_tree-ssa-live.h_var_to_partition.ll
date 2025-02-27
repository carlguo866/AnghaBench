; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-live.h_var_to_partition.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-live.h_var_to_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32 }
%struct.TYPE_7__ = type { i64 }

@SSA_NAME = common dso_local global i64 0, align 8
@NO_PARTITION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @var_to_partition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @var_to_partition(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @TREE_CODE(i32 %7)
  %9 = load i64, i64* @SSA_NAME, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %31

11:                                               ; preds = %2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @SSA_NAME_VERSION(i32 %15)
  %17 = call i32 @partition_find(i32 %14, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %11
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %22, %11
  br label %44

31:                                               ; preds = %2
  %32 = load i32, i32* %4, align 4
  %33 = call %struct.TYPE_7__* @var_ann(i32 %32)
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %5, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = call i32 @VAR_ANN_PARTITION(%struct.TYPE_7__* %39)
  store i32 %40, i32* %6, align 4
  br label %43

41:                                               ; preds = %31
  %42 = load i32, i32* @NO_PARTITION, align 4
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %41, %38
  br label %44

44:                                               ; preds = %43, %30
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @partition_find(i32, i32) #1

declare dso_local i32 @SSA_NAME_VERSION(i32) #1

declare dso_local %struct.TYPE_7__* @var_ann(i32) #1

declare dso_local i32 @VAR_ANN_PARTITION(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
