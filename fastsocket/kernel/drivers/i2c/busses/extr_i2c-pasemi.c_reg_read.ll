; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-pasemi.c_reg_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-pasemi.c_reg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pasemi_smbus = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"smbus read reg %lx val %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pasemi_smbus*, i32)* @reg_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reg_read(%struct.pasemi_smbus* %0, i32 %1) #0 {
  %3 = alloca %struct.pasemi_smbus*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pasemi_smbus* %0, %struct.pasemi_smbus** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.pasemi_smbus*, %struct.pasemi_smbus** %3, align 8
  %7 = getelementptr inbounds %struct.pasemi_smbus, %struct.pasemi_smbus* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = add nsw i64 %8, %10
  %12 = call i32 @inl(i64 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.pasemi_smbus*, %struct.pasemi_smbus** %3, align 8
  %14 = getelementptr inbounds %struct.pasemi_smbus, %struct.pasemi_smbus* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.pasemi_smbus*, %struct.pasemi_smbus** %3, align 8
  %18 = getelementptr inbounds %struct.pasemi_smbus, %struct.pasemi_smbus* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %19, %21
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @dev_dbg(i32* %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %22, i32 %23)
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
