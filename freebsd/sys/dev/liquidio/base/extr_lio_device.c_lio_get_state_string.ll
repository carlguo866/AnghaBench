; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_device.c_lio_get_state_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_device.c_lio_get_state_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LIO_DEV_STATES = common dso_local global i64 0, align 8
@lio_state_str = common dso_local global i8** null, align 8
@LIO_DEV_STATE_INVALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @lio_get_state_string(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @atomic_load_acq_int(i32* %5)
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @LIO_DEV_STATES, align 8
  %10 = icmp ugt i64 %8, %9
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i64, i64* %4, align 8
  %13 = icmp ult i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %11, %1
  %15 = load i8**, i8*** @lio_state_str, align 8
  %16 = load i64, i64* @LIO_DEV_STATE_INVALID, align 8
  %17 = getelementptr inbounds i8*, i8** %15, i64 %16
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %2, align 8
  br label %24

19:                                               ; preds = %11
  %20 = load i8**, i8*** @lio_state_str, align 8
  %21 = load i64, i64* %4, align 8
  %22 = getelementptr inbounds i8*, i8** %20, i64 %21
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %2, align 8
  br label %24

24:                                               ; preds = %19, %14
  %25 = load i8*, i8** %2, align 8
  ret i8* %25
}

declare dso_local i32 @atomic_load_acq_int(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
