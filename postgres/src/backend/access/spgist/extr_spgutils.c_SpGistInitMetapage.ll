; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgutils.c_SpGistInitMetapage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgutils.c_SpGistInitMetapage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@SPGIST_META = common dso_local global i32 0, align 4
@SPGIST_MAGIC_NUMBER = common dso_local global i32 0, align 4
@SPGIST_CACHED_PAGES = common dso_local global i32 0, align 4
@InvalidBlockNumber = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SpGistInitMetapage(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = load i32, i32* @SPGIST_META, align 4
  %7 = call i32 @SpGistInitPage(i64 %5, i32 %6)
  %8 = load i64, i64* %2, align 8
  %9 = call %struct.TYPE_9__* @SpGistPageGetMeta(i64 %8)
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %3, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = call i32 @memset(%struct.TYPE_9__* %10, i32 0, i32 16)
  %12 = load i32, i32* @SPGIST_MAGIC_NUMBER, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %29, %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @SPGIST_CACHED_PAGES, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %15
  %20 = load i32, i32* @InvalidBlockNumber, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  store i32 %20, i32* %28, align 4
  br label %29

29:                                               ; preds = %19
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %15

32:                                               ; preds = %15
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = bitcast %struct.TYPE_9__* %33 to i8*
  %35 = getelementptr inbounds i8, i8* %34, i64 16
  %36 = load i64, i64* %2, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = ptrtoint i8* %35 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  %41 = trunc i64 %40 to i32
  %42 = load i64, i64* %2, align 8
  %43 = inttoptr i64 %42 to %struct.TYPE_10__*
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  ret void
}

declare dso_local i32 @SpGistInitPage(i64, i32) #1

declare dso_local %struct.TYPE_9__* @SpGistPageGetMeta(i64) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
