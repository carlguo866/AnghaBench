; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec_htab.c_sh2rec_htab_lookup.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec_htab.c_sh2rec_htab_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@table = common dso_local global %struct.TYPE_6__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @sh2rec_htab_lookup(i64 %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @table, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @hash_addr(i64 %6)
  %8 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %5, i64 %7
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %4, align 8
  br label %10

10:                                               ; preds = %23, %1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = icmp ne %struct.TYPE_6__* %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %10
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %3, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %2, align 8
  br label %28

23:                                               ; preds = %13
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %4, align 8
  br label %10

27:                                               ; preds = %10
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %28

28:                                               ; preds = %27, %20
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  ret %struct.TYPE_5__* %29
}

declare dso_local i64 @hash_addr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
