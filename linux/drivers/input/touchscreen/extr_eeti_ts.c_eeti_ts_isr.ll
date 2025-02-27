; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_eeti_ts.c_eeti_ts_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_eeti_ts.c_eeti_ts_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeti_ts = type { i32, i64, i64 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @eeti_ts_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eeti_ts_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.eeti_ts*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.eeti_ts*
  store %struct.eeti_ts* %8, %struct.eeti_ts** %5, align 8
  %9 = load %struct.eeti_ts*, %struct.eeti_ts** %5, align 8
  %10 = getelementptr inbounds %struct.eeti_ts, %struct.eeti_ts* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  br label %12

12:                                               ; preds = %41, %2
  %13 = load %struct.eeti_ts*, %struct.eeti_ts** %5, align 8
  %14 = getelementptr inbounds %struct.eeti_ts, %struct.eeti_ts* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load %struct.eeti_ts*, %struct.eeti_ts** %5, align 8
  %19 = getelementptr inbounds %struct.eeti_ts, %struct.eeti_ts* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @gpiod_get_value_cansleep(i64 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  br label %43

24:                                               ; preds = %17, %12
  %25 = load %struct.eeti_ts*, %struct.eeti_ts** %5, align 8
  %26 = call i32 @eeti_ts_read(%struct.eeti_ts* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %43

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.eeti_ts*, %struct.eeti_ts** %5, align 8
  %33 = getelementptr inbounds %struct.eeti_ts, %struct.eeti_ts* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.eeti_ts*, %struct.eeti_ts** %5, align 8
  %38 = getelementptr inbounds %struct.eeti_ts, %struct.eeti_ts* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %36, %31
  %42 = phi i1 [ false, %31 ], [ %40, %36 ]
  br i1 %42, label %12, label %43

43:                                               ; preds = %41, %29, %23
  %44 = load %struct.eeti_ts*, %struct.eeti_ts** %5, align 8
  %45 = getelementptr inbounds %struct.eeti_ts, %struct.eeti_ts* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %47
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gpiod_get_value_cansleep(i64) #1

declare dso_local i32 @eeti_ts_read(%struct.eeti_ts*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
