; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb__remove_alloc.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb__remove_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32 }

@stb__alloc_history = common dso_local global %struct.TYPE_3__* null, align 8
@stb__history_pos = common dso_local global i64 0, align 8
@stb__allocations = common dso_local global %struct.TYPE_3__* null, align 8
@STB_MALLOC_HISTORY_COUNT = common dso_local global i64 0, align 8
@STB_DEL = common dso_local global i32 0, align 4
@stb__alloc_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32)* @stb__remove_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stb__remove_alloc(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @stb__alloc_history, align 8
  %8 = load i64, i64* @stb__history_pos, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i64 %8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @stb__allocations, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i64 %12
  %14 = bitcast %struct.TYPE_3__* %9 to i8*
  %15 = bitcast %struct.TYPE_3__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 16, i1 false)
  %16 = load i8*, i8** %5, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @stb__alloc_history, align 8
  %18 = load i64, i64* @stb__history_pos, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i8* %16, i8** %20, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @stb__alloc_history, align 8
  %23 = load i64, i64* @stb__history_pos, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i32 %21, i32* %25, align 8
  %26 = load i64, i64* @stb__history_pos, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* @stb__history_pos, align 8
  %28 = load i64, i64* @STB_MALLOC_HISTORY_COUNT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  store i64 0, i64* @stb__history_pos, align 8
  br label %31

31:                                               ; preds = %30, %3
  %32 = load i32, i32* @STB_DEL, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @stb__allocations, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  store i32 %32, i32* %37, align 4
  %38 = load i32, i32* @stb__alloc_count, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* @stb__alloc_count, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
