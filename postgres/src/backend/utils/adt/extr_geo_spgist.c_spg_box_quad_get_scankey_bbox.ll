; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_geo_spgist.c_spg_box_quad_get_scankey_bbox.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_geo_spgist.c_spg_box_quad_get_scankey_bbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unrecognized scankey subtype: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__*, i32*)* @spg_box_quad_get_scankey_bbox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @spg_box_quad_get_scankey_bbox(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %31 [
    i32 129, label %9
    i32 128, label %14
  ]

9:                                                ; preds = %2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32* @DatumGetBoxP(i32 %12)
  store i32* %13, i32** %3, align 8
  br label %37

14:                                               ; preds = %2
  %15 = load i32*, i32** %5, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @is_bounding_box_test_exact(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = load i32*, i32** %5, align 8
  store i32 1, i32* %24, align 4
  br label %25

25:                                               ; preds = %23, %17, %14
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.TYPE_5__* @DatumGetPolygonP(i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32* %30, i32** %3, align 8
  br label %37

31:                                               ; preds = %2
  %32 = load i32, i32* @ERROR, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @elog(i32 %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %35)
  store i32* null, i32** %3, align 8
  br label %37

37:                                               ; preds = %31, %25, %9
  %38 = load i32*, i32** %3, align 8
  ret i32* %38
}

declare dso_local i32* @DatumGetBoxP(i32) #1

declare dso_local i32 @is_bounding_box_test_exact(i32) #1

declare dso_local %struct.TYPE_5__* @DatumGetPolygonP(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
