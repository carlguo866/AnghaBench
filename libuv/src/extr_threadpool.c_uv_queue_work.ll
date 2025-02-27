; ModuleID = '/home/carl/AnghaBench/libuv/src/extr_threadpool.c_uv_queue_work.c'
source_filename = "/home/carl/AnghaBench/libuv/src/extr_threadpool.c_uv_queue_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32*, i32* }

@UV_EINVAL = common dso_local global i32 0, align 4
@UV_WORK = common dso_local global i32 0, align 4
@UV__WORK_CPU = common dso_local global i32 0, align 4
@uv__queue_work = common dso_local global i32 0, align 4
@uv__queue_done = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_queue_work(i32* %0, %struct.TYPE_4__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32*, i32** %8, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = load i32, i32* @UV_EINVAL, align 4
  store i32 %13, i32* %5, align 4
  br label %35

14:                                               ; preds = %4
  %15 = load i32*, i32** %6, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %17 = load i32, i32* @UV_WORK, align 4
  %18 = call i32 @uv__req_init(i32* %15, %struct.TYPE_4__* %16, i32 %17)
  %19 = load i32*, i32** %6, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  store i32* %19, i32** %21, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  store i32* %22, i32** %24, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* @UV__WORK_CPU, align 4
  %32 = load i32, i32* @uv__queue_work, align 4
  %33 = load i32, i32* @uv__queue_done, align 4
  %34 = call i32 @uv__work_submit(i32* %28, i32* %30, i32 %31, i32 %32, i32 %33)
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %14, %12
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @uv__req_init(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @uv__work_submit(i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
