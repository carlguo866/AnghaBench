; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_ls.c_FlushLsCacheItem.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_ls.c_FlushLsCacheItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32* }

@.str = private unnamed_addr constant [25 x i8] c"flush ls cache item: %s\0A\00", align 1
@gLsCache = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @FlushLsCacheItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FlushLsCacheItem(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gLsCache, align 8
  %4 = load i32, i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i64 %5
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = call i32 @Trace(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32* %8)
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gLsCache, align 8
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gLsCache, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @free(i32* %23)
  br label %25

25:                                               ; preds = %17, %1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gLsCache, align 8
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  store i32* null, i32** %30, align 8
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gLsCache, align 8
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gLsCache, align 8
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @DisposeFileInfoListContents(i32* %40)
  ret void
}

declare dso_local i32 @Trace(i32, i8*, i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @DisposeFileInfoListContents(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
