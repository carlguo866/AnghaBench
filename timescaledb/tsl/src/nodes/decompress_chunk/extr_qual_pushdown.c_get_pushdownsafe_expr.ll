; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/nodes/decompress_chunk/extr_qual_pushdown.c_get_pushdownsafe_expr.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/nodes/decompress_chunk/extr_qual_pushdown.c_get_pushdownsafe_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__*, i32*)* @get_pushdownsafe_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_pushdownsafe_expr(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = call i32 @memcpy(%struct.TYPE_6__* %6, %struct.TYPE_6__* %8, i32 4)
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i32 1, i32* %10, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = call i64 @modify_expression(i32* %11, %struct.TYPE_6__* %6)
  %13 = inttoptr i64 %12 to i32*
  store i32* %13, i32** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32*, i32** %7, align 8
  store i32* %18, i32** %3, align 8
  br label %20

19:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %20

20:                                               ; preds = %19, %17
  %21 = load i32*, i32** %3, align 8
  ret i32* %21
}

declare dso_local i32 @memcpy(%struct.TYPE_6__*, %struct.TYPE_6__*, i32) #1

declare dso_local i64 @modify_expression(i32*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
