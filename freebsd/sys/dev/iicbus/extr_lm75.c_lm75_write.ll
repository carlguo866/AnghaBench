; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_lm75.c_lm75_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_lm75.c_lm75_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iic_msg = type { i64, i32*, i32, i32 }

@IIC_M_WR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i64)* @lm75_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm75_write(i32 %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [1 x %struct.iic_msg], align 16
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = getelementptr inbounds [1 x %struct.iic_msg], [1 x %struct.iic_msg]* %10, i64 0, i64 0
  %12 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %11, i32 0, i32 0
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %12, align 8
  %15 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %11, i32 0, i32 1
  %16 = load i32, i32* @IIC_M_WR, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i32*
  store i32* %18, i32** %15, align 8
  %19 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %11, i32 0, i32 2
  %20 = load i64, i64* %9, align 8
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %19, align 8
  %22 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %11, i32 0, i32 3
  %23 = load i32*, i32** %8, align 8
  %24 = ptrtoint i32* %23 to i32
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* %6, align 4
  %26 = getelementptr inbounds [1 x %struct.iic_msg], [1 x %struct.iic_msg]* %10, i64 0, i64 0
  %27 = getelementptr inbounds [1 x %struct.iic_msg], [1 x %struct.iic_msg]* %10, i64 0, i64 0
  %28 = call i32 @nitems(%struct.iic_msg* %27)
  %29 = call i64 @iicbus_transfer(i32 %25, %struct.iic_msg* %26, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %33

32:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %32, %31
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i64 @iicbus_transfer(i32, %struct.iic_msg*, i32) #1

declare dso_local i32 @nitems(%struct.iic_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
