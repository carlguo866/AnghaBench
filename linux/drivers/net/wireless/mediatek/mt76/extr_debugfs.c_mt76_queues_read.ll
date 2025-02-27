; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_debugfs.c_mt76_queues_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_debugfs.c_mt76_queues_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.mt76_dev = type { %struct.mt76_sw_queue* }
%struct.mt76_sw_queue = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"%d:\09queued=%d head=%d tail=%d swq_queued=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @mt76_queues_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76_queues_read(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mt76_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mt76_sw_queue*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.mt76_dev* @dev_get_drvdata(i32 %10)
  store %struct.mt76_dev* %11, %struct.mt76_dev** %5, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %53, %2
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.mt76_dev*, %struct.mt76_dev** %5, align 8
  %15 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %14, i32 0, i32 0
  %16 = load %struct.mt76_sw_queue*, %struct.mt76_sw_queue** %15, align 8
  %17 = call i32 @ARRAY_SIZE(%struct.mt76_sw_queue* %16)
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %56

19:                                               ; preds = %12
  %20 = load %struct.mt76_dev*, %struct.mt76_dev** %5, align 8
  %21 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %20, i32 0, i32 0
  %22 = load %struct.mt76_sw_queue*, %struct.mt76_sw_queue** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.mt76_sw_queue, %struct.mt76_sw_queue* %22, i64 %24
  store %struct.mt76_sw_queue* %25, %struct.mt76_sw_queue** %7, align 8
  %26 = load %struct.mt76_sw_queue*, %struct.mt76_sw_queue** %7, align 8
  %27 = getelementptr inbounds %struct.mt76_sw_queue, %struct.mt76_sw_queue* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = icmp ne %struct.TYPE_2__* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %19
  br label %53

31:                                               ; preds = %19
  %32 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.mt76_sw_queue*, %struct.mt76_sw_queue** %7, align 8
  %35 = getelementptr inbounds %struct.mt76_sw_queue, %struct.mt76_sw_queue* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mt76_sw_queue*, %struct.mt76_sw_queue** %7, align 8
  %40 = getelementptr inbounds %struct.mt76_sw_queue, %struct.mt76_sw_queue* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mt76_sw_queue*, %struct.mt76_sw_queue** %7, align 8
  %45 = getelementptr inbounds %struct.mt76_sw_queue, %struct.mt76_sw_queue* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.mt76_sw_queue*, %struct.mt76_sw_queue** %7, align 8
  %50 = getelementptr inbounds %struct.mt76_sw_queue, %struct.mt76_sw_queue* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @seq_printf(%struct.seq_file* %32, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %38, i32 %43, i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %31, %30
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %12

56:                                               ; preds = %12
  ret i32 0
}

declare dso_local %struct.mt76_dev* @dev_get_drvdata(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.mt76_sw_queue*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
