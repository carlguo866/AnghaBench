; ModuleID = '/home/carl/AnghaBench/zfs/module/nvpair/extr_nvpair.c_nvlist_exists.c'
source_filename = "/home/carl/AnghaBench/zfs/module/nvpair/extr_nvpair.c_nvlist_exists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_7__* }

@B_FALSE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvlist_exists(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = icmp eq %struct.TYPE_6__* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %6, align 8
  %19 = icmp eq %struct.TYPE_5__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %14, %11, %2
  %21 = load i32, i32* @B_FALSE, align 4
  store i32 %21, i32* %3, align 4
  br label %46

22:                                               ; preds = %14
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %8, align 8
  br label %26

26:                                               ; preds = %40, %22
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %28 = icmp ne %struct.TYPE_7__* %27, null
  br i1 %28, label %29, label %44

29:                                               ; preds = %26
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store i32* %31, i32** %7, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @NVP_NAME(i32* %33)
  %35 = call i64 @strcmp(i8* %32, i32 %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* @B_TRUE, align 4
  store i32 %38, i32* %3, align 4
  br label %46

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  store %struct.TYPE_7__* %43, %struct.TYPE_7__** %8, align 8
  br label %26

44:                                               ; preds = %26
  %45 = load i32, i32* @B_FALSE, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %37, %20
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @NVP_NAME(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
