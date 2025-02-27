; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_expander.c_sas_get_phy_attached_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_expander.c_sas_get_phy_attached_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { i32 }
%struct.smp_resp = type { %struct.discover_resp }
%struct.discover_resp = type { i32 }

@DISCOVER_RESP_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.domain_device*, i32, i32*, i32*)* @sas_get_phy_attached_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sas_get_phy_attached_dev(%struct.domain_device* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.domain_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.smp_resp*, align 8
  %12 = alloca %struct.discover_resp*, align 8
  store %struct.domain_device* %0, %struct.domain_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* @DISCOVER_RESP_SIZE, align 4
  %14 = call %struct.smp_resp* @alloc_smp_resp(i32 %13)
  store %struct.smp_resp* %14, %struct.smp_resp** %11, align 8
  %15 = load %struct.smp_resp*, %struct.smp_resp** %11, align 8
  %16 = icmp ne %struct.smp_resp* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %50

20:                                               ; preds = %4
  %21 = load %struct.smp_resp*, %struct.smp_resp** %11, align 8
  %22 = getelementptr inbounds %struct.smp_resp, %struct.smp_resp* %21, i32 0, i32 0
  store %struct.discover_resp* %22, %struct.discover_resp** %12, align 8
  %23 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.smp_resp*, %struct.smp_resp** %11, align 8
  %26 = call i32 @sas_get_phy_discover(%struct.domain_device* %23, i32 %24, %struct.smp_resp* %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %20
  %30 = load i32*, i32** %8, align 8
  %31 = load %struct.smp_resp*, %struct.smp_resp** %11, align 8
  %32 = getelementptr inbounds %struct.smp_resp, %struct.smp_resp* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.discover_resp, %struct.discover_resp* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @memcpy(i32* %30, i32 %34, i32 8)
  %36 = load %struct.discover_resp*, %struct.discover_resp** %12, align 8
  %37 = call i32 @to_dev_type(%struct.discover_resp* %36)
  %38 = load i32*, i32** %9, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %29
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @memset(i32* %43, i32 0, i32 8)
  br label %45

45:                                               ; preds = %42, %29
  br label %46

46:                                               ; preds = %45, %20
  %47 = load %struct.smp_resp*, %struct.smp_resp** %11, align 8
  %48 = call i32 @kfree(%struct.smp_resp* %47)
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %46, %17
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local %struct.smp_resp* @alloc_smp_resp(i32) #1

declare dso_local i32 @sas_get_phy_discover(%struct.domain_device*, i32, %struct.smp_resp*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @to_dev_type(%struct.discover_resp*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @kfree(%struct.smp_resp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
