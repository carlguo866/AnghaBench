; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_mxge_ethp_z8e.c_mxge_ethp_z8e_fw_modevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_mxge_ethp_z8e.c_mxge_ethp_z8e_fw_modevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"mxge_ethp_z8e\00", align 1
@ethp_z8e = common dso_local global i32 0, align 4
@ethp_z8e_length = common dso_local global i32 0, align 4
@ethp_z8e_uncompressed_length = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @mxge_ethp_z8e_fw_modevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxge_ethp_z8e_fw_modevent(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.firmware*, align 8
  %9 = alloca %struct.firmware*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %28 [
    i32 129, label %12
    i32 128, label %25
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* @ethp_z8e, align 4
  %14 = load i32, i32* @ethp_z8e_length, align 4
  %15 = sext i32 %14 to i64
  %16 = load i32, i32* @ethp_z8e_uncompressed_length, align 4
  %17 = call %struct.firmware* @firmware_register(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %13, i64 %15, i32 %16, i32* null)
  store %struct.firmware* %17, %struct.firmware** %8, align 8
  %18 = load %struct.firmware*, %struct.firmware** %8, align 8
  %19 = icmp eq %struct.firmware* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %23

21:                                               ; preds = %12
  %22 = load %struct.firmware*, %struct.firmware** %8, align 8
  store %struct.firmware* %22, %struct.firmware** %9, align 8
  store i32 0, i32* %4, align 4
  br label %30

23:                                               ; preds = %20
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %4, align 4
  br label %30

25:                                               ; preds = %3
  %26 = call i32 @firmware_unregister(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %4, align 4
  br label %30

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %28, %25, %23, %21
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local %struct.firmware* @firmware_register(i8*, i32, i64, i32, i32*) #1

declare dso_local i32 @firmware_unregister(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
