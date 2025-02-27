; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-io.c_ide_complete_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-io.c_ide_complete_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.request* }
%struct.request = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ide_complete_rq(%struct.TYPE_6__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.request*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %7, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.request*, %struct.request** %14, align 8
  store %struct.request* %15, %struct.request** %8, align 8
  %16 = load %struct.request*, %struct.request** %8, align 8
  %17 = call i64 @blk_noretry_request(%struct.request* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load i64, i64* %5, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load %struct.request*, %struct.request** %8, align 8
  %24 = call i32 @blk_rq_sectors(%struct.request* %23)
  %25 = shl i32 %24, 9
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %22, %19, %3
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = load %struct.request*, %struct.request** %8, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @ide_end_rq(%struct.TYPE_6__* %27, %struct.request* %28, i64 %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store %struct.request* null, %struct.request** %36, align 8
  br label %37

37:                                               ; preds = %34, %26
  %38 = load i32, i32* %9, align 4
  ret i32 %38
}

declare dso_local i64 @blk_noretry_request(%struct.request*) #1

declare dso_local i32 @blk_rq_sectors(%struct.request*) #1

declare dso_local i32 @ide_end_rq(%struct.TYPE_6__*, %struct.request*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
