; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_lm3533-als.c_lm3533_als_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_lm3533-als.c_lm3533_als_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm3533_als = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@LM3533_ALS_ENABLE_MASK = common dso_local global i32 0, align 4
@LM3533_REG_ALS_CONF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failed to disable ALS\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm3533_als*)* @lm3533_als_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3533_als_disable(%struct.lm3533_als* %0) #0 {
  %2 = alloca %struct.lm3533_als*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.lm3533_als* %0, %struct.lm3533_als** %2, align 8
  %5 = load i32, i32* @LM3533_ALS_ENABLE_MASK, align 4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.lm3533_als*, %struct.lm3533_als** %2, align 8
  %7 = getelementptr inbounds %struct.lm3533_als, %struct.lm3533_als* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @LM3533_REG_ALS_CONF, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @lm3533_update(i32 %8, i32 %9, i32 0, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.lm3533_als*, %struct.lm3533_als** %2, align 8
  %16 = getelementptr inbounds %struct.lm3533_als, %struct.lm3533_als* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %14, %1
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

declare dso_local i32 @lm3533_update(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
