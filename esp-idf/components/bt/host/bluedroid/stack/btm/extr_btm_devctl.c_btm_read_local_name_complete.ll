; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_devctl.c_btm_read_local_name_complete.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_devctl.c_btm_read_local_name_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (i64*)*, i32 }

@btm_cb = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@HCI_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_read_local_name_complete(i64* %0, i32 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32 (i64*)**, align 8
  %6 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32 (i64*)*, i32 (i64*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %8 = bitcast i32 (i64*)* %7 to i32 (i64*)**
  store i32 (i64*)** %8, i32 (i64*)*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @UNUSED(i32 %9)
  %11 = call i32 @btu_free_timer(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 0, i32 1))
  store i32 (i64*)* null, i32 (i64*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %12 = load i32 (i64*)**, i32 (i64*)*** %5, align 8
  %13 = icmp ne i32 (i64*)** %12, null
  br i1 %13, label %14, label %31

14:                                               ; preds = %2
  %15 = load i64, i64* %6, align 8
  %16 = load i64*, i64** %3, align 8
  %17 = call i32 @STREAM_TO_UINT8(i64 %15, i64* %16)
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @HCI_SUCCESS, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load i32 (i64*)**, i32 (i64*)*** %5, align 8
  %23 = load i32 (i64*)*, i32 (i64*)** %22, align 8
  %24 = load i64*, i64** %3, align 8
  %25 = call i32 %23(i64* %24)
  br label %30

26:                                               ; preds = %14
  %27 = load i32 (i64*)**, i32 (i64*)*** %5, align 8
  %28 = load i32 (i64*)*, i32 (i64*)** %27, align 8
  %29 = call i32 %28(i64* null)
  br label %30

30:                                               ; preds = %26, %21
  br label %31

31:                                               ; preds = %30, %2
  ret void
}

declare dso_local i32 @UNUSED(i32) #1

declare dso_local i32 @btu_free_timer(i32*) #1

declare dso_local i32 @STREAM_TO_UINT8(i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
