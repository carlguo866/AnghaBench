; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_misc.c_dsaf_read_sub.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_misc.c_dsaf_read_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsaf_device = type { i32, i32, i64 }

@.str = private unnamed_addr constant [28 x i8] c"dsaf_read_syscon error %d!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsaf_device*, i32)* @dsaf_read_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsaf_read_sub(%struct.dsaf_device* %0, i32 %1) #0 {
  %3 = alloca %struct.dsaf_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dsaf_device* %0, %struct.dsaf_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %8 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %2
  %12 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %13 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @dsaf_read_syscon(i64 %14, i32 %15, i32* %5)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %11
  %20 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %21 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %19, %11
  br label %32

26:                                               ; preds = %2
  %27 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %28 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @dsaf_read_reg(i32 %29, i32 %30)
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %26, %25
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @dsaf_read_syscon(i64, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dsaf_read_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
