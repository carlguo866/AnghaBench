; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/find/extr_function.c_palloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/find/extr_function.c_palloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (%struct.TYPE_7__*)* @palloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @palloc(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %4 = call %struct.TYPE_6__* @malloc(i32 16)
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %3, align 8
  %5 = icmp eq %struct.TYPE_6__* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 @err(i32 1, i32* null)
  br label %8

8:                                                ; preds = %6, %1
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %21
}

declare dso_local %struct.TYPE_6__* @malloc(i32) #1

declare dso_local i32 @err(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
