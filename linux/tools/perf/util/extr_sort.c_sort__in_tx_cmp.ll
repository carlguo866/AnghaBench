; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_sort__in_tx_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_sort__in_tx_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_entry*, %struct.hist_entry*)* @sort__in_tx_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sort__in_tx_cmp(%struct.hist_entry* %0, %struct.hist_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hist_entry*, align 8
  %5 = alloca %struct.hist_entry*, align 8
  store %struct.hist_entry* %0, %struct.hist_entry** %4, align 8
  store %struct.hist_entry* %1, %struct.hist_entry** %5, align 8
  %6 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %7 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %6, i32 0, i32 0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = icmp ne %struct.TYPE_5__* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %12 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %10, %2
  %16 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %17 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %20 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = call i32 @cmp_null(%struct.TYPE_5__* %18, %struct.TYPE_5__* %21)
  store i32 %22, i32* %3, align 4
  br label %38

23:                                               ; preds = %10
  %24 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %25 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %31 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %29, %35
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %23, %15
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @cmp_null(%struct.TYPE_5__*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
