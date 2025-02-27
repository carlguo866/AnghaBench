; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_ts-nbus.c_ts_nbus_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_ts-nbus.c_ts_nbus_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ts_nbus = type { i32, i32, i32, i32 }

@TS_NBUS_WRITE_ADR = common dso_local global i32 0, align 4
@TS_NBUS_WRITE_VAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ts_nbus_write(%struct.ts_nbus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ts_nbus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ts_nbus* %0, %struct.ts_nbus** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ts_nbus*, %struct.ts_nbus** %4, align 8
  %9 = getelementptr inbounds %struct.ts_nbus, %struct.ts_nbus* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.ts_nbus*, %struct.ts_nbus** %4, align 8
  %12 = getelementptr inbounds %struct.ts_nbus, %struct.ts_nbus* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @gpiod_set_value_cansleep(i32 %13, i32 1)
  %15 = load %struct.ts_nbus*, %struct.ts_nbus** %4, align 8
  %16 = load i32, i32* @TS_NBUS_WRITE_ADR, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @ts_nbus_write_bus(%struct.ts_nbus* %15, i32 %16, i32 %17)
  store i32 1, i32* %7, align 4
  br label %19

19:                                               ; preds = %30, %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load %struct.ts_nbus*, %struct.ts_nbus** %4, align 8
  %24 = load i32, i32* @TS_NBUS_WRITE_VAL, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = mul nsw i32 %26, 8
  %28 = ashr i32 %25, %27
  %29 = call i32 @ts_nbus_write_bus(%struct.ts_nbus* %23, i32 %24, i32 %28)
  br label %30

30:                                               ; preds = %22
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %7, align 4
  br label %19

33:                                               ; preds = %19
  %34 = load %struct.ts_nbus*, %struct.ts_nbus** %4, align 8
  %35 = getelementptr inbounds %struct.ts_nbus, %struct.ts_nbus* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @gpiod_set_value_cansleep(i32 %36, i32 1)
  br label %38

38:                                               ; preds = %44, %33
  %39 = load %struct.ts_nbus*, %struct.ts_nbus** %4, align 8
  %40 = getelementptr inbounds %struct.ts_nbus, %struct.ts_nbus* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @gpiod_get_value_cansleep(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %38
  %45 = load %struct.ts_nbus*, %struct.ts_nbus** %4, align 8
  %46 = getelementptr inbounds %struct.ts_nbus, %struct.ts_nbus* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @gpiod_set_value_cansleep(i32 %47, i32 0)
  %49 = load %struct.ts_nbus*, %struct.ts_nbus** %4, align 8
  %50 = getelementptr inbounds %struct.ts_nbus, %struct.ts_nbus* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @gpiod_set_value_cansleep(i32 %51, i32 1)
  br label %38

53:                                               ; preds = %38
  %54 = load %struct.ts_nbus*, %struct.ts_nbus** %4, align 8
  %55 = getelementptr inbounds %struct.ts_nbus, %struct.ts_nbus* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @ts_nbus_write_bus(%struct.ts_nbus*, i32, i32) #1

declare dso_local i64 @gpiod_get_value_cansleep(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
