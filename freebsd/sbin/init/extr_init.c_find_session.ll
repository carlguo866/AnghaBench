; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/init/extr_init.c_find_session.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/init/extr_init.c_find_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 (%struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32)* }
%struct.TYPE_6__ = type { i32, i32* }

@session_db = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @find_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @find_session(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = alloca %struct.TYPE_6__, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  store i32* %3, i32** %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  store i32 4, i32* %8, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** @session_db, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i64 (%struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32)*, i64 (%struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32)** %10, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** @session_db, align 8
  %13 = call i64 %11(%struct.TYPE_7__* %12, %struct.TYPE_6__* %4, %struct.TYPE_6__* %5, i32 0)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %22

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = bitcast i32** %6 to i8*
  %20 = call i32 @bcopy(i32* %18, i8* %19, i32 8)
  %21 = load i32*, i32** %6, align 8
  store i32* %21, i32** %2, align 8
  br label %22

22:                                               ; preds = %16, %15
  %23 = load i32*, i32** %2, align 8
  ret i32* %23
}

declare dso_local i32 @bcopy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
