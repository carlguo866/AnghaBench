; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_cacheinfo.c_cache_nr_sets.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_cacheinfo.c_cache_nr_sets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.cache = type { i64, i32 }

@cache_type_info = common dso_local global %struct.TYPE_2__* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache*, i32*)* @cache_nr_sets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_nr_sets(%struct.cache* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cache*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store %struct.cache* %0, %struct.cache** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cache_type_info, align 8
  %9 = load %struct.cache*, %struct.cache** %4, align 8
  %10 = getelementptr inbounds %struct.cache, %struct.cache* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %6, align 8
  %15 = load %struct.cache*, %struct.cache** %4, align 8
  %16 = getelementptr inbounds %struct.cache, %struct.cache* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32* @of_get_property(i32 %17, i8* %18, i32* null)
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %29

25:                                               ; preds = %2
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @of_read_number(i32* %26, i32 1)
  %28 = load i32*, i32** %5, align 8
  store i32 %27, i32* %28, align 4
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %25, %22
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32* @of_get_property(i32, i8*, i32*) #1

declare dso_local i32 @of_read_number(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
