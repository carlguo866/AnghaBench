; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/finger/extr_util.c_walloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/finger/extr_util.c_walloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_6__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (%struct.TYPE_7__*)* @walloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @walloc(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %4 = call %struct.TYPE_6__* @malloc(i32 8)
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %3, align 8
  %5 = icmp eq %struct.TYPE_6__* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 @err(i32 1, i32* null)
  br label %8

8:                                                ; preds = %6, %1
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = icmp eq %struct.TYPE_6__* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %16, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %18, align 8
  br label %28

19:                                               ; preds = %8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %24, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %27, align 8
  br label %28

28:                                               ; preds = %19, %13
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %30, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %31
}

declare dso_local %struct.TYPE_6__* @malloc(i32) #1

declare dso_local i32 @err(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
