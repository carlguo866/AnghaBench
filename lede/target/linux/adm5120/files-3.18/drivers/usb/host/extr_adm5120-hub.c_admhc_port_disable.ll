; ModuleID = '/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/usb/host/extr_adm5120-hub.c_admhc_port_disable.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/usb/host/extr_adm5120-hub.c_admhc_port_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.admhcd = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"disable port%d\0A\00", align 1
@ADMHC_PS_CCS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ADMHC_PS_CPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.admhcd*, i32)* @admhc_port_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @admhc_port_disable(%struct.admhcd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.admhcd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.admhcd* %0, %struct.admhcd** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.admhcd*, %struct.admhcd** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @admhc_vdbg(%struct.admhcd* %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.admhcd*, %struct.admhcd** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @admhc_read_portstatus(%struct.admhcd* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @ADMHC_PS_CCS, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %25

20:                                               ; preds = %2
  %21 = load %struct.admhcd*, %struct.admhcd** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @ADMHC_PS_CPE, align 4
  %24 = call i32 @admhc_write_portstatus(%struct.admhcd* %21, i32 %22, i32 %23)
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %20, %17
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @admhc_vdbg(%struct.admhcd*, i8*, i32) #1

declare dso_local i32 @admhc_read_portstatus(%struct.admhcd*, i32) #1

declare dso_local i32 @admhc_write_portstatus(%struct.admhcd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
