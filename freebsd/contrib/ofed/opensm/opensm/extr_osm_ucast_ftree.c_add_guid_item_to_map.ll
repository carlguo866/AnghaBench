; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_ftree.c_add_guid_item_to_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_ftree.c_add_guid_item_to_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @add_guid_item_to_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_guid_item_to_map(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %8, align 8
  %13 = call %struct.TYPE_4__* @malloc(i32 8)
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %9, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %34

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = call i64 @cl_qmap_insert(i32* %21, i32 %22, i32* %24)
  %26 = inttoptr i64 %25 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %10, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %29 = icmp ne %struct.TYPE_4__* %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %17
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %32 = call i32 @free(%struct.TYPE_4__* %31)
  br label %33

33:                                               ; preds = %30, %17
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %16
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.TYPE_4__* @malloc(i32) #1

declare dso_local i64 @cl_qmap_insert(i32*, i32, i32*) #1

declare dso_local i32 @free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
