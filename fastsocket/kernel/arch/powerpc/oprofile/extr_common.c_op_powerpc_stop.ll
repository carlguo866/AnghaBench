; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/oprofile/extr_common.c_op_powerpc_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/oprofile/extr_common.c_op_powerpc_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)*, i64 }

@model = common dso_local global %struct.TYPE_2__* null, align 8
@op_powerpc_cpu_stop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @op_powerpc_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @op_powerpc_stop() #0 {
  %1 = load %struct.TYPE_2__*, %struct.TYPE_2__** @model, align 8
  %2 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 1
  %3 = load i64, i64* %2, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i32, i32* @op_powerpc_cpu_stop, align 4
  %7 = call i32 @on_each_cpu(i32 %6, i32* null, i32 1)
  br label %8

8:                                                ; preds = %5, %0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @model, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (...)*, i32 (...)** %10, align 8
  %12 = icmp ne i32 (...)* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @model, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (...)*, i32 (...)** %15, align 8
  %17 = call i32 (...) %16()
  br label %18

18:                                               ; preds = %13, %8
  ret void
}

declare dso_local i32 @on_each_cpu(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
