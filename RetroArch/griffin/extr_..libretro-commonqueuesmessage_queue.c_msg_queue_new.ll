; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonqueuesmessage_queue.c_msg_queue_new.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonqueuesmessage_queue.c_msg_queue_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, %struct.queue_elem** }
%struct.queue_elem = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @msg_queue_new(i64 %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.queue_elem**, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.queue_elem** null, %struct.queue_elem*** %4, align 8
  %6 = call i64 @calloc(i32 1, i32 24)
  %7 = inttoptr i64 %6 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %5, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %34

11:                                               ; preds = %1
  %12 = load i64, i64* %3, align 8
  %13 = add i64 %12, 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i64 @calloc(i32 %19, i32 8)
  %21 = inttoptr i64 %20 to %struct.queue_elem**
  store %struct.queue_elem** %21, %struct.queue_elem*** %4, align 8
  %22 = load %struct.queue_elem**, %struct.queue_elem*** %4, align 8
  %23 = icmp ne %struct.queue_elem** %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %11
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %26 = call i32 @free(%struct.TYPE_4__* %25)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %34

27:                                               ; preds = %11
  %28 = load %struct.queue_elem**, %struct.queue_elem*** %4, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  store %struct.queue_elem** %28, %struct.queue_elem*** %30, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i32 1, i32* %32, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %33, %struct.TYPE_4__** %2, align 8
  br label %34

34:                                               ; preds = %27, %24, %10
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %35
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
