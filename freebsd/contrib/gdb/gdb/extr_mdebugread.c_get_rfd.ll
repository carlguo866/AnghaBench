; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mdebugread.c_get_rfd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mdebugread.c_get_rfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 (i32, i8*, i32*)* }

@debug_info = common dso_local global %struct.TYPE_7__* null, align 8
@debug_swap = common dso_local global %struct.TYPE_6__* null, align 8
@cur_bfd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i32, i32)* @get_rfd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @get_rfd(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** @debug_info, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %6, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i64 %14
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %7, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i64 %23
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %3, align 8
  br label %50

25:                                               ; preds = %2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @debug_swap, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32 (i32, i8*, i32*)*, i32 (i32, i8*, i32*)** %27, align 8
  %29 = load i32, i32* @cur_bfd, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** @debug_info, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %36, %37
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @debug_swap, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = mul nsw i32 %38, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %33, i64 %43
  %45 = call i32 %28(i32 %29, i8* %44, i32* %8)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 %48
  store %struct.TYPE_5__* %49, %struct.TYPE_5__** %3, align 8
  br label %50

50:                                               ; preds = %25, %20
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
