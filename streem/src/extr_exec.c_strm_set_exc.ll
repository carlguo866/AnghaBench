; ModuleID = '/home/carl/AnghaBench/streem/src/extr_exec.c_strm_set_exc.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_exec.c_strm_set_exc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i64, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_7__*, i32, i32)* @strm_set_exc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @strm_set_exc(%struct.TYPE_7__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = call %struct.TYPE_8__* @malloc(i32 32)
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %8, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %11 = icmp ne %struct.TYPE_8__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %30

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = call i32 @strm_clear_exc(%struct.TYPE_7__* %24)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %28, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %4, align 8
  br label %30

30:                                               ; preds = %13, %12
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  ret %struct.TYPE_8__* %31
}

declare dso_local %struct.TYPE_8__* @malloc(i32) #1

declare dso_local i32 @strm_clear_exc(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
