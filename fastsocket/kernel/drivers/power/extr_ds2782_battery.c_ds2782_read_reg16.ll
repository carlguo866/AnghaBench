; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_ds2782_battery.c_ds2782_read_reg16.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_ds2782_battery.c_ds2782_read_reg16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds2782_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"register read failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ds2782_info*, i32, i32*)* @ds2782_read_reg16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds2782_read_reg16(%struct.ds2782_info* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ds2782_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.ds2782_info* %0, %struct.ds2782_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load %struct.ds2782_info*, %struct.ds2782_info** %5, align 8
  %10 = getelementptr inbounds %struct.ds2782_info, %struct.ds2782_info* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @i2c_smbus_read_word_data(%struct.TYPE_2__* %11, i32 %12)
  %14 = call i32 @swab16(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load %struct.ds2782_info*, %struct.ds2782_info** %5, align 8
  %19 = getelementptr inbounds %struct.ds2782_info, %struct.ds2782_info* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %4, align 4
  br label %27

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  %26 = load i32*, i32** %7, align 8
  store i32 %25, i32* %26, align 4
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %24, %17
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @swab16(i32) #1

declare dso_local i32 @i2c_smbus_read_word_data(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
