; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_fmd_serd.c_fmd_serd_eng_gc.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_fmd_serd.c_fmd_serd_eng_gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i64, i32 }
%struct.TYPE_10__ = type { i64 }

@FMD_SERD_FIRED = common dso_local global i32 0, align 4
@FMD_SERD_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fmd_serd_eng_gc(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @FMD_SERD_FIRED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10, %1
  br label %61

18:                                               ; preds = %10
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 3
  %21 = call %struct.TYPE_10__* @list_head(i32* %20)
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %3, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %23 = icmp eq %struct.TYPE_10__* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %61

25:                                               ; preds = %18
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %28, %31
  store i64 %32, i64* %5, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 3
  %35 = call %struct.TYPE_10__* @list_head(i32* %34)
  store %struct.TYPE_10__* %35, %struct.TYPE_10__** %3, align 8
  br label %36

36:                                               ; preds = %59, %25
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %38 = icmp ne %struct.TYPE_10__* %37, null
  br i1 %38, label %39, label %61

39:                                               ; preds = %36
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %61

46:                                               ; preds = %39
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %50 = call %struct.TYPE_10__* @list_next(i32* %48, %struct.TYPE_10__* %49)
  store %struct.TYPE_10__* %50, %struct.TYPE_10__** %4, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %53 = call i32 @fmd_serd_eng_discard(%struct.TYPE_9__* %51, %struct.TYPE_10__* %52)
  %54 = load i32, i32* @FMD_SERD_DIRTY, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %46
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %60, %struct.TYPE_10__** %3, align 8
  br label %36

61:                                               ; preds = %17, %24, %45, %36
  ret void
}

declare dso_local %struct.TYPE_10__* @list_head(i32*) #1

declare dso_local %struct.TYPE_10__* @list_next(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @fmd_serd_eng_discard(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
