; ModuleID = '/home/carl/AnghaBench/linux/drivers/sh/clk/extr_core.c_clk_reparent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sh/clk/extr_core.c_clk_reparent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { %struct.clk*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clk_reparent(%struct.clk* %0, %struct.clk* %1) #0 {
  %3 = alloca %struct.clk*, align 8
  %4 = alloca %struct.clk*, align 8
  store %struct.clk* %0, %struct.clk** %3, align 8
  store %struct.clk* %1, %struct.clk** %4, align 8
  %5 = load %struct.clk*, %struct.clk** %3, align 8
  %6 = getelementptr inbounds %struct.clk, %struct.clk* %5, i32 0, i32 2
  %7 = call i32 @list_del_init(i32* %6)
  %8 = load %struct.clk*, %struct.clk** %4, align 8
  %9 = icmp ne %struct.clk* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.clk*, %struct.clk** %3, align 8
  %12 = getelementptr inbounds %struct.clk, %struct.clk* %11, i32 0, i32 2
  %13 = load %struct.clk*, %struct.clk** %4, align 8
  %14 = getelementptr inbounds %struct.clk, %struct.clk* %13, i32 0, i32 1
  %15 = call i32 @list_add(i32* %12, i32* %14)
  br label %16

16:                                               ; preds = %10, %2
  %17 = load %struct.clk*, %struct.clk** %4, align 8
  %18 = load %struct.clk*, %struct.clk** %3, align 8
  %19 = getelementptr inbounds %struct.clk, %struct.clk* %18, i32 0, i32 0
  store %struct.clk* %17, %struct.clk** %19, align 8
  ret i32 0
}

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
