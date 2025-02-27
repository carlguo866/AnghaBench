; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_upd64031a.c_upd64031a_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_upd64031a.c_upd64031a_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"write reg: %02X val: %02X\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"I/O error write 0x%02x/0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subdev*, i32, i32)* @upd64031a_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @upd64031a_write(%struct.v4l2_subdev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca [2 x i32], align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %9)
  store %struct.i2c_client* %10, %struct.i2c_client** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* %6, align 4
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @debug, align 4
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @v4l2_dbg(i32 1, i32 %15, %struct.v4l2_subdev* %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %22 = call i32 @i2c_master_send(%struct.i2c_client* %20, i32* %21, i32 2)
  %23 = icmp ne i32 %22, 2
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @v4l2_err(%struct.v4l2_subdev* %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %24, %3
  ret void
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32, i32) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i32*, i32) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
