; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph_case_of.c_ccv_nnc_symbolic_graph_set_case_of_expr.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph_case_of.c_ccv_nnc_symbolic_graph_set_case_of_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccv_nnc_symbolic_graph_set_case_of_expr(%struct.TYPE_8__* %0, i32 %1, %struct.TYPE_8__* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = bitcast %struct.TYPE_9__* %6 to { i32, %struct.TYPE_8__* }*
  %12 = getelementptr inbounds { i32, %struct.TYPE_8__* }, { i32, %struct.TYPE_8__* }* %11, i32 0, i32 0
  store i32 %1, i32* %12, align 8
  %13 = getelementptr inbounds { i32, %struct.TYPE_8__* }, { i32, %struct.TYPE_8__* }* %11, i32 0, i32 1
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32 %3, i32* %8, align 4
  store i8* %4, i8** %9, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %17 = icmp eq %struct.TYPE_8__* %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @ccv_array_get(i32 %22, i32 %24)
  %26 = inttoptr i64 %25 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %10, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  store i8* %31, i8** %34, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ccv_array_get(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
