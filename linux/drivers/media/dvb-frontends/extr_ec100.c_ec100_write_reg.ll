; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_ec100.c_ec100_write_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_ec100.c_ec100_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ec100_state = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"%s: i2c wr failed=%d reg=%02x\0A\00", align 1
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ec100_state*, i32, i32)* @ec100_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ec100_write_reg(%struct.ec100_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ec100_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca [1 x %struct.i2c_msg], align 16
  store %struct.ec100_state* %0, %struct.ec100_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds i32, i32* %10, i64 1
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %9, i64 0, i64 0
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 0
  store i32 8, i32* %15, align 8
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 1
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32* %17, i32** %16, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 2
  store i32 0, i32* %18, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 3
  %20 = load %struct.ec100_state*, %struct.ec100_state** %4, align 8
  %21 = getelementptr inbounds %struct.ec100_state, %struct.ec100_state* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %19, align 4
  %24 = load %struct.ec100_state*, %struct.ec100_state** %4, align 8
  %25 = getelementptr inbounds %struct.ec100_state, %struct.ec100_state* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %9, i64 0, i64 0
  %28 = call i32 @i2c_transfer(%struct.TYPE_4__* %26, %struct.i2c_msg* %27, i32 1)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %43

32:                                               ; preds = %3
  %33 = load %struct.ec100_state*, %struct.ec100_state** %4, align 8
  %34 = getelementptr inbounds %struct.ec100_state, %struct.ec100_state* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* @KBUILD_MODNAME, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @dev_warn(i32* %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* @EREMOTEIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %32, %31
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

declare dso_local i32 @i2c_transfer(%struct.TYPE_4__*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
