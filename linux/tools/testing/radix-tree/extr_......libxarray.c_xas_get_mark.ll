; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_......libxarray.c_xas_get_mark.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_......libxarray.c_xas_get_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xa_state = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xas_get_mark(%struct.xa_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xa_state*, align 8
  %5 = alloca i32, align 4
  store %struct.xa_state* %0, %struct.xa_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %7 = call i64 @xas_invalid(%struct.xa_state* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %30

10:                                               ; preds = %2
  %11 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %12 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %17 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @xa_marked(i32 %18, i32 %19)
  store i32 %20, i32* %3, align 4
  br label %30

21:                                               ; preds = %10
  %22 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %23 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %26 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @node_get_mark(i32 %24, i32 %27, i32 %28)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %21, %15, %9
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i64 @xas_invalid(%struct.xa_state*) #1

declare dso_local i32 @xa_marked(i32, i32) #1

declare dso_local i32 @node_get_mark(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
