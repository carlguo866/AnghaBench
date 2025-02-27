; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe_sysfs.c_fcoe_fcf_device_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe_sysfs.c_fcoe_fcf_device_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcoe_fcf_device = type { i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fcoe_fcf_device*, %struct.fcoe_fcf_device*)* @fcoe_fcf_device_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fcoe_fcf_device_match(%struct.fcoe_fcf_device* %0, %struct.fcoe_fcf_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fcoe_fcf_device*, align 8
  %5 = alloca %struct.fcoe_fcf_device*, align 8
  store %struct.fcoe_fcf_device* %0, %struct.fcoe_fcf_device** %4, align 8
  store %struct.fcoe_fcf_device* %1, %struct.fcoe_fcf_device** %5, align 8
  %6 = load %struct.fcoe_fcf_device*, %struct.fcoe_fcf_device** %4, align 8
  %7 = getelementptr inbounds %struct.fcoe_fcf_device, %struct.fcoe_fcf_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.fcoe_fcf_device*, %struct.fcoe_fcf_device** %5, align 8
  %10 = getelementptr inbounds %struct.fcoe_fcf_device, %struct.fcoe_fcf_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %8, %11
  br i1 %12, label %13, label %39

13:                                               ; preds = %2
  %14 = load %struct.fcoe_fcf_device*, %struct.fcoe_fcf_device** %4, align 8
  %15 = getelementptr inbounds %struct.fcoe_fcf_device, %struct.fcoe_fcf_device* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.fcoe_fcf_device*, %struct.fcoe_fcf_device** %5, align 8
  %18 = getelementptr inbounds %struct.fcoe_fcf_device, %struct.fcoe_fcf_device* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %13
  %22 = load %struct.fcoe_fcf_device*, %struct.fcoe_fcf_device** %4, align 8
  %23 = getelementptr inbounds %struct.fcoe_fcf_device, %struct.fcoe_fcf_device* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.fcoe_fcf_device*, %struct.fcoe_fcf_device** %5, align 8
  %26 = getelementptr inbounds %struct.fcoe_fcf_device, %struct.fcoe_fcf_device* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %21
  %30 = load %struct.fcoe_fcf_device*, %struct.fcoe_fcf_device** %4, align 8
  %31 = getelementptr inbounds %struct.fcoe_fcf_device, %struct.fcoe_fcf_device* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.fcoe_fcf_device*, %struct.fcoe_fcf_device** %5, align 8
  %34 = getelementptr inbounds %struct.fcoe_fcf_device, %struct.fcoe_fcf_device* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @compare_ether_addr(i32 %32, i32 %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %40

39:                                               ; preds = %29, %21, %13, %2
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %38
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @compare_ether_addr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
