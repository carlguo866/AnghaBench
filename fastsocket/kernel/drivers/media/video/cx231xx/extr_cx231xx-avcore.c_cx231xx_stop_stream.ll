; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-avcore.c_cx231xx_stop_stream.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-avcore.c_cx231xx_stop_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"cx231xx_stop_stream():: ep_mask = %x\0A\00", align 1
@VRT_GET_REGISTER = common dso_local global i32 0, align 4
@EP_MODE_SET = common dso_local global i32 0, align 4
@VRT_SET_REGISTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_stop_stream(%struct.cx231xx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx231xx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [4 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = bitcast [4 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 16, i1 false)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @cx231xx_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %13 = load i32, i32* @VRT_GET_REGISTER, align 4
  %14 = load i32, i32* @EP_MODE_SET, align 4
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %16 = call i32 @cx231xx_read_ctrl_reg(%struct.cx231xx* %12, i32 %13, i32 %14, i32* %15, i32 4)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %45

21:                                               ; preds = %2
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %23 = load i32, i32* %22, align 16
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %5, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 %28, i32* %29, align 16
  %30 = load i32, i32* %7, align 4
  %31 = ashr i32 %30, 8
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %7, align 4
  %34 = ashr i32 %33, 16
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* %7, align 4
  %37 = ashr i32 %36, 24
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  store i32 %37, i32* %38, align 4
  %39 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %40 = load i32, i32* @VRT_SET_REGISTER, align 4
  %41 = load i32, i32* @EP_MODE_SET, align 4
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %43 = call i32 @cx231xx_write_ctrl_reg(%struct.cx231xx* %39, i32 %40, i32 %41, i32* %42, i32 4)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %21, %19
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cx231xx_info(i8*, i32) #2

declare dso_local i32 @cx231xx_read_ctrl_reg(%struct.cx231xx*, i32, i32, i32*, i32) #2

declare dso_local i32 @cx231xx_write_ctrl_reg(%struct.cx231xx*, i32, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
