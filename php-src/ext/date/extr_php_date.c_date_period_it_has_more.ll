; ModuleID = '/home/carl/AnghaBench/php-src/ext/date/extr_php_date.c_date_period_it_has_more.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/date/extr_php_date.c_date_period_it_has_more.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_10__*, %struct.TYPE_11__*, i32*, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i32, i64, i64, i32 }

@SUCCESS = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @date_period_it_has_more to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @date_period_it_has_more(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = bitcast i32* %7 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %8, %struct.TYPE_13__** %4, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = call %struct.TYPE_12__* @Z_PHPPERIOD_P(i32* %11)
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %5, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %6, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %20, %1
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %37 = call i32 @timelib_update_ts(%struct.TYPE_11__* %36, i32* null)
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %39 = call i32 @timelib_update_from_sse(%struct.TYPE_11__* %38)
  br label %40

40:                                               ; preds = %25, %20
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = icmp ne %struct.TYPE_10__* %43, null
  br i1 %44, label %45, label %63

45:                                               ; preds = %40
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %50, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %45
  %58 = load i32, i32* @SUCCESS, align 4
  br label %61

59:                                               ; preds = %45
  %60 = load i32, i32* @FAILURE, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  store i32 %62, i32* %2, align 4
  br label %77

63:                                               ; preds = %40
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp slt i64 %66, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i32, i32* @SUCCESS, align 4
  br label %75

73:                                               ; preds = %63
  %74 = load i32, i32* @FAILURE, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %75, %61
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.TYPE_12__* @Z_PHPPERIOD_P(i32*) #1

declare dso_local i32 @timelib_update_ts(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @timelib_update_from_sse(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
