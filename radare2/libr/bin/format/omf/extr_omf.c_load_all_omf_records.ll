; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/format/omf/extr_omf.c_load_all_omf_records.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/format/omf/extr_omf.c_load_all_omf_records.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i64)* @load_all_omf_records to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_all_omf_records(%struct.TYPE_6__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %10, align 8
  br label %11

11:                                               ; preds = %43, %3
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %51

15:                                               ; preds = %11
  %16 = load i32*, i32** %6, align 8
  %17 = load i64, i64* %8, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = sub nsw i64 %20, %21
  %23 = call %struct.TYPE_7__* @load_record_omf(i32* %18, i64 %19, i64 %22)
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %9, align 8
  %24 = icmp ne %struct.TYPE_7__* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %52

26:                                               ; preds = %15
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %28 = icmp ne %struct.TYPE_7__* %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %26
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store %struct.TYPE_7__* %30, %struct.TYPE_7__** %32, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %10, align 8
  br label %43

36:                                               ; preds = %26
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %39, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  store %struct.TYPE_7__* %42, %struct.TYPE_7__** %10, align 8
  br label %43

43:                                               ; preds = %36, %29
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %45 = bitcast %struct.TYPE_7__* %44 to %struct.TYPE_8__*
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 3, %47
  %49 = load i64, i64* %8, align 8
  %50 = add nsw i64 %49, %48
  store i64 %50, i64* %8, align 8
  br label %11

51:                                               ; preds = %11
  store i32 1, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %25
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.TYPE_7__* @load_record_omf(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
