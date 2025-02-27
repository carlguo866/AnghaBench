; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_vmlogrdr.c_vmlogrdr_recording_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_vmlogrdr.c_vmlogrdr_recording_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.vmlogrdr_priv_t = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @vmlogrdr_recording_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vmlogrdr_recording_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.vmlogrdr_priv_t*, align 8
  %11 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.vmlogrdr_priv_t* @dev_get_drvdata(%struct.device* %12)
  store %struct.vmlogrdr_priv_t* %13, %struct.vmlogrdr_priv_t** %10, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  switch i32 %17, label %24 [
    i32 48, label %18
    i32 49, label %21
  ]

18:                                               ; preds = %4
  %19 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %10, align 8
  %20 = call i64 @vmlogrdr_recording(%struct.vmlogrdr_priv_t* %19, i32 0, i32 0)
  store i64 %20, i64* %11, align 8
  br label %27

21:                                               ; preds = %4
  %22 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %10, align 8
  %23 = call i64 @vmlogrdr_recording(%struct.vmlogrdr_priv_t* %22, i32 1, i32 0)
  store i64 %23, i64* %11, align 8
  br label %27

24:                                               ; preds = %4
  %25 = load i64, i64* @EINVAL, align 8
  %26 = sub i64 0, %25
  store i64 %26, i64* %11, align 8
  br label %27

27:                                               ; preds = %24, %21, %18
  %28 = load i64, i64* %11, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i64, i64* %11, align 8
  store i64 %31, i64* %5, align 8
  br label %34

32:                                               ; preds = %27
  %33 = load i64, i64* %9, align 8
  store i64 %33, i64* %5, align 8
  br label %34

34:                                               ; preds = %32, %30
  %35 = load i64, i64* %5, align 8
  ret i64 %35
}

declare dso_local %struct.vmlogrdr_priv_t* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @vmlogrdr_recording(%struct.vmlogrdr_priv_t*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
