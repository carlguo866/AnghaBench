; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/wav/extr_rwav.c_rwav_load.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/wav/extr_rwav.c_rwav_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64, i32*, i32* }

@RWAV_ITERATE_MORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rwav_load(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 5
  store i32* null, i32** %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 4
  store i32* null, i32** %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  store i64 0, i64* %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @rwav_init(%struct.TYPE_4__* %8, i32* %15, i8* %16, i64 %17)
  br label %19

19:                                               ; preds = %21, %3
  %20 = call i32 @rwav_iterate(%struct.TYPE_4__* %8)
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %19
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @RWAV_ITERATE_MORE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %19, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  ret i32 %26
}

declare dso_local i32 @rwav_init(%struct.TYPE_4__*, i32*, i8*, i64) #1

declare dso_local i32 @rwav_iterate(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
