; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_pcf50633-core.c_show_resume_reason.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_pcf50633-core.c_show_resume_reason.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.pcf50633 = type { i32* }

@.str = private unnamed_addr constant [22 x i8] c"%02x%02x%02x%02x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_resume_reason to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_resume_reason(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pcf50633*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.pcf50633* @dev_get_drvdata(%struct.device* %9)
  store %struct.pcf50633* %10, %struct.pcf50633** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load %struct.pcf50633*, %struct.pcf50633** %7, align 8
  %13 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.pcf50633*, %struct.pcf50633** %7, align 8
  %18 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.pcf50633*, %struct.pcf50633** %7, align 8
  %23 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.pcf50633*, %struct.pcf50633** %7, align 8
  %28 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.pcf50633*, %struct.pcf50633** %7, align 8
  %33 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 4
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @sprintf(i8* %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %21, i32 %26, i32 %31, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  ret i32 %38
}

declare dso_local %struct.pcf50633* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
