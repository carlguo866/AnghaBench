; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358767.c_tc_aux_read_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358767.c_tc_aux_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_data = type { i32 }

@DP_AUX_MAX_PAYLOAD_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tc_data*, i8*, i64)* @tc_aux_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_aux_read_data(%struct.tc_data* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tc_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tc_data* %0, %struct.tc_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i32, i32* @DP_AUX_MAX_PAYLOAD_BYTES, align 4
  %14 = sext i32 %13 to i64
  %15 = udiv i64 %14, 4
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @ALIGN(i64 %18, i32 4)
  store i32 %19, i32* %11, align 4
  %20 = load %struct.tc_data*, %struct.tc_data** %5, align 8
  %21 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @DP0_AUXRDATA(i32 0)
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @regmap_raw_read(i32 %22, i32 %23, i32* %17, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %36

30:                                               ; preds = %3
  %31 = load i8*, i8** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @memcpy(i8* %31, i32* %17, i64 %32)
  %34 = load i64, i64* %7, align 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %36

36:                                               ; preds = %30, %28
  %37 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %37)
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ALIGN(i64, i32) #2

declare dso_local i32 @regmap_raw_read(i32, i32, i32*, i32) #2

declare dso_local i32 @DP0_AUXRDATA(i32) #2

declare dso_local i32 @memcpy(i8*, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
