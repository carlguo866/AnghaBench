; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ecc_logging.c_ecc_log_record_event.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ecc_logging.c_ecc_log_record_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecc_event = type { i64 }

@ECC_EVENT_INFO_DATA_ENTRIES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Count of %u on ecc event is too large.\00", align 1
@ecc_data_lock = common dso_local global i32 0, align 4
@ecc_correction_count = common dso_local global i32 0, align 4
@ecc_data_next_read = common dso_local global i64 0, align 8
@ecc_data_next_write = common dso_local global i64 0, align 8
@ecc_data_empty = common dso_local global i64 0, align 8
@KERN_FAILURE = common dso_local global i32 0, align 4
@ecc_data = common dso_local global i32* null, align 8
@ECC_EVENT_BUFFER_COUNT = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecc_log_record_event(%struct.ecc_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ecc_event*, align 8
  %4 = alloca i32, align 4
  store %struct.ecc_event* %0, %struct.ecc_event** %3, align 8
  %5 = load %struct.ecc_event*, %struct.ecc_event** %3, align 8
  %6 = getelementptr inbounds %struct.ecc_event, %struct.ecc_event* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @ECC_EVENT_INFO_DATA_ENTRIES, align 8
  %9 = icmp sgt i64 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.ecc_event*, %struct.ecc_event** %3, align 8
  %12 = getelementptr inbounds %struct.ecc_event, %struct.ecc_event* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = trunc i64 %13 to i32
  %15 = call i32 @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %10, %1
  %17 = call i32 (...) @splhigh()
  store i32 %17, i32* %4, align 4
  %18 = call i32 @lck_spin_lock(i32* @ecc_data_lock)
  %19 = load i32, i32* @ecc_correction_count, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @ecc_correction_count, align 4
  %21 = load i64, i64* @ecc_data_next_read, align 8
  %22 = load i64, i64* @ecc_data_next_write, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %16
  %25 = load i64, i64* @ecc_data_empty, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %24
  %28 = call i32 @lck_spin_unlock(i32* @ecc_data_lock)
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @splx(i32 %29)
  %31 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %31, i32* %2, align 4
  br label %48

32:                                               ; preds = %24, %16
  %33 = load %struct.ecc_event*, %struct.ecc_event** %3, align 8
  %34 = load i32*, i32** @ecc_data, align 8
  %35 = load i64, i64* @ecc_data_next_write, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = call i32 @bcopy(%struct.ecc_event* %33, i32* %36, i32 8)
  %38 = load i64, i64* @ecc_data_next_write, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* @ecc_data_next_write, align 8
  %40 = load i64, i64* @ECC_EVENT_BUFFER_COUNT, align 8
  %41 = load i64, i64* @ecc_data_next_write, align 8
  %42 = urem i64 %41, %40
  store i64 %42, i64* @ecc_data_next_write, align 8
  %43 = load i64, i64* @FALSE, align 8
  store i64 %43, i64* @ecc_data_empty, align 8
  %44 = call i32 @lck_spin_unlock(i32* @ecc_data_lock)
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @splx(i32 %45)
  %47 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %32, %27
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @splhigh(...) #1

declare dso_local i32 @lck_spin_lock(i32*) #1

declare dso_local i32 @lck_spin_unlock(i32*) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @bcopy(%struct.ecc_event*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
