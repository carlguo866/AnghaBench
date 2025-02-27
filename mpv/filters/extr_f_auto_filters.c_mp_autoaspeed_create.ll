; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_auto_filters.c_mp_autoaspeed_create.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_auto_filters.c_mp_autoaspeed_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { %struct.aspeed_priv* }
%struct.aspeed_priv = type { double, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }

@aspeed_filter = common dso_local global i32 0, align 4
@MP_PIN_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"in\00", align 1
@MP_PIN_OUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"out\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mp_filter* @mp_autoaspeed_create(%struct.mp_filter* %0) #0 {
  %2 = alloca %struct.mp_filter*, align 8
  %3 = alloca %struct.mp_filter*, align 8
  %4 = alloca %struct.mp_filter*, align 8
  %5 = alloca %struct.aspeed_priv*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %3, align 8
  %6 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %7 = call %struct.mp_filter* @mp_filter_create(%struct.mp_filter* %6, i32* @aspeed_filter)
  store %struct.mp_filter* %7, %struct.mp_filter** %4, align 8
  %8 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %9 = icmp ne %struct.mp_filter* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.mp_filter* null, %struct.mp_filter** %2, align 8
  br label %30

11:                                               ; preds = %1
  %12 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %13 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %12, i32 0, i32 0
  %14 = load %struct.aspeed_priv*, %struct.aspeed_priv** %13, align 8
  store %struct.aspeed_priv* %14, %struct.aspeed_priv** %5, align 8
  %15 = load %struct.aspeed_priv*, %struct.aspeed_priv** %5, align 8
  %16 = getelementptr inbounds %struct.aspeed_priv, %struct.aspeed_priv* %15, i32 0, i32 0
  store double 1.000000e+00, double* %16, align 8
  %17 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %18 = load i32, i32* @MP_PIN_IN, align 4
  %19 = call i8* @mp_filter_add_pin(%struct.mp_filter* %17, i32 %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.aspeed_priv*, %struct.aspeed_priv** %5, align 8
  %21 = getelementptr inbounds %struct.aspeed_priv, %struct.aspeed_priv* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i8* %19, i8** %22, align 8
  %23 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %24 = load i32, i32* @MP_PIN_OUT, align 4
  %25 = call i8* @mp_filter_add_pin(%struct.mp_filter* %23, i32 %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.aspeed_priv*, %struct.aspeed_priv** %5, align 8
  %27 = getelementptr inbounds %struct.aspeed_priv, %struct.aspeed_priv* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i8* %25, i8** %28, align 8
  %29 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  store %struct.mp_filter* %29, %struct.mp_filter** %2, align 8
  br label %30

30:                                               ; preds = %11, %10
  %31 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  ret %struct.mp_filter* %31
}

declare dso_local %struct.mp_filter* @mp_filter_create(%struct.mp_filter*, i32*) #1

declare dso_local i8* @mp_filter_add_pin(%struct.mp_filter*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
