; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wince.c_child_add_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wince.c_child_add_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_6__*, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@thread_head = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i32, i32)* @child_add_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @child_add_thread(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @FALSE, align 4
  %9 = call %struct.TYPE_6__* @thread_rec(i32 %7, i32 %8)
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %6, align 8
  %10 = icmp ne %struct.TYPE_6__* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %3, align 8
  br label %31

13:                                               ; preds = %2
  %14 = call i64 @xmalloc(i32 16)
  %15 = inttoptr i64 %14 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %6, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %17 = call i32 @memset(%struct.TYPE_6__* %16, i32 0, i32 16)
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @thread_head, i32 0, i32 0), align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %26, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @thread_head, i32 0, i32 0), align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @add_thread(i32 %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %3, align 8
  br label %31

31:                                               ; preds = %13, %11
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %32
}

declare dso_local %struct.TYPE_6__* @thread_rec(i32, i32) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @add_thread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
