; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_chsc.c_chsc_process_sei_scm_avail.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_chsc.c_chsc_process_sei_scm_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chsc_sei_area = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"chsc: scm available information\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"chsc: process availability information failed (rc=%d).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.chsc_sei_area*)* @chsc_process_sei_scm_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chsc_process_sei_scm_avail(%struct.chsc_sei_area* %0) #0 {
  %2 = alloca %struct.chsc_sei_area*, align 8
  %3 = alloca i32, align 4
  store %struct.chsc_sei_area* %0, %struct.chsc_sei_area** %2, align 8
  %4 = call i32 (i32, i8*, ...) @CIO_CRW_EVENT(i32 4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.chsc_sei_area*, %struct.chsc_sei_area** %2, align 8
  %6 = getelementptr inbounds %struct.chsc_sei_area, %struct.chsc_sei_area* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %17

10:                                               ; preds = %1
  %11 = call i32 (...) @scm_process_availability_information()
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = call i32 (i32, i8*, ...) @CIO_CRW_EVENT(i32 0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %9, %14, %10
  ret void
}

declare dso_local i32 @CIO_CRW_EVENT(i32, i8*, ...) #1

declare dso_local i32 @scm_process_availability_information(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
