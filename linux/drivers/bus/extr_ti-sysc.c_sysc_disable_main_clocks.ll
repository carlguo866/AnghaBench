; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_disable_main_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_disable_main_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysc = type { %struct.clk** }
%struct.clk = type { i32 }

@SYSC_OPTFCK0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sysc*)* @sysc_disable_main_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sysc_disable_main_clocks(%struct.sysc* %0) #0 {
  %2 = alloca %struct.sysc*, align 8
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i32, align 4
  store %struct.sysc* %0, %struct.sysc** %2, align 8
  %5 = load %struct.sysc*, %struct.sysc** %2, align 8
  %6 = getelementptr inbounds %struct.sysc, %struct.sysc* %5, i32 0, i32 0
  %7 = load %struct.clk**, %struct.clk*** %6, align 8
  %8 = icmp ne %struct.clk** %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %33

10:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %30, %10
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @SYSC_OPTFCK0, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %11
  %16 = load %struct.sysc*, %struct.sysc** %2, align 8
  %17 = getelementptr inbounds %struct.sysc, %struct.sysc* %16, i32 0, i32 0
  %18 = load %struct.clk**, %struct.clk*** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.clk*, %struct.clk** %18, i64 %20
  %22 = load %struct.clk*, %struct.clk** %21, align 8
  store %struct.clk* %22, %struct.clk** %3, align 8
  %23 = load %struct.clk*, %struct.clk** %3, align 8
  %24 = call i64 @IS_ERR_OR_NULL(%struct.clk* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  br label %30

27:                                               ; preds = %15
  %28 = load %struct.clk*, %struct.clk** %3, align 8
  %29 = call i32 @clk_disable(%struct.clk* %28)
  br label %30

30:                                               ; preds = %27, %26
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %11

33:                                               ; preds = %9, %11
  ret void
}

declare dso_local i64 @IS_ERR_OR_NULL(%struct.clk*) #1

declare dso_local i32 @clk_disable(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
