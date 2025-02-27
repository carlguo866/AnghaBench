; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rpmh-rsc.c_get_req_from_tcs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rpmh-rsc.c_get_req_from_tcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcs_request = type { i32 }
%struct.rsc_drv = type { %struct.tcs_group* }
%struct.tcs_group = type { i32, i32, %struct.tcs_request** }

@TCS_TYPE_NR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tcs_request* (%struct.rsc_drv*, i32)* @get_req_from_tcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tcs_request* @get_req_from_tcs(%struct.rsc_drv* %0, i32 %1) #0 {
  %3 = alloca %struct.tcs_request*, align 8
  %4 = alloca %struct.rsc_drv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcs_group*, align 8
  %7 = alloca i32, align 4
  store %struct.rsc_drv* %0, %struct.rsc_drv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %39, %2
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @TCS_TYPE_NR, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %42

12:                                               ; preds = %8
  %13 = load %struct.rsc_drv*, %struct.rsc_drv** %4, align 8
  %14 = getelementptr inbounds %struct.rsc_drv, %struct.rsc_drv* %13, i32 0, i32 0
  %15 = load %struct.tcs_group*, %struct.tcs_group** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.tcs_group, %struct.tcs_group* %15, i64 %17
  store %struct.tcs_group* %18, %struct.tcs_group** %6, align 8
  %19 = load %struct.tcs_group*, %struct.tcs_group** %6, align 8
  %20 = getelementptr inbounds %struct.tcs_group, %struct.tcs_group* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @BIT(i32 %22)
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %12
  %27 = load %struct.tcs_group*, %struct.tcs_group** %6, align 8
  %28 = getelementptr inbounds %struct.tcs_group, %struct.tcs_group* %27, i32 0, i32 2
  %29 = load %struct.tcs_request**, %struct.tcs_request*** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.tcs_group*, %struct.tcs_group** %6, align 8
  %32 = getelementptr inbounds %struct.tcs_group, %struct.tcs_group* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %30, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.tcs_request*, %struct.tcs_request** %29, i64 %35
  %37 = load %struct.tcs_request*, %struct.tcs_request** %36, align 8
  store %struct.tcs_request* %37, %struct.tcs_request** %3, align 8
  br label %43

38:                                               ; preds = %12
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %8

42:                                               ; preds = %8
  store %struct.tcs_request* null, %struct.tcs_request** %3, align 8
  br label %43

43:                                               ; preds = %42, %26
  %44 = load %struct.tcs_request*, %struct.tcs_request** %3, align 8
  ret %struct.tcs_request* %44
}

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
