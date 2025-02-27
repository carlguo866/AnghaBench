; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_spi.c_nfcmrvl_spi_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_spi.c_nfcmrvl_spi_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.nfcmrvl_platform_data = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Failed to get generic entries\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Unable to get irq, error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.nfcmrvl_platform_data*)* @nfcmrvl_spi_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfcmrvl_spi_parse_dt(%struct.device_node* %0, %struct.nfcmrvl_platform_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.nfcmrvl_platform_data*, align 8
  %6 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.nfcmrvl_platform_data* %1, %struct.nfcmrvl_platform_data** %5, align 8
  %7 = load %struct.device_node*, %struct.device_node** %4, align 8
  %8 = load %struct.nfcmrvl_platform_data*, %struct.nfcmrvl_platform_data** %5, align 8
  %9 = call i32 @nfcmrvl_parse_dt(%struct.device_node* %7, %struct.nfcmrvl_platform_data* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %28

15:                                               ; preds = %2
  %16 = load %struct.device_node*, %struct.device_node** %4, align 8
  %17 = call i32 @irq_of_parse_and_map(%struct.device_node* %16, i32 0)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  %22 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %28

24:                                               ; preds = %15
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.nfcmrvl_platform_data*, %struct.nfcmrvl_platform_data** %5, align 8
  %27 = getelementptr inbounds %struct.nfcmrvl_platform_data, %struct.nfcmrvl_platform_data* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %24, %20, %12
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @nfcmrvl_parse_dt(%struct.device_node*, %struct.nfcmrvl_platform_data*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @irq_of_parse_and_map(%struct.device_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
