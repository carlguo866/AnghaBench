; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-versatile.c_i2c_versatile_setscl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-versatile.c_i2c_versatile_setscl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_versatile = type { i64 }

@SCL = common dso_local global i32 0, align 4
@I2C_CONTROLS = common dso_local global i64 0, align 8
@I2C_CONTROLC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @i2c_versatile_setscl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_versatile_setscl(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_versatile*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.i2c_versatile*
  store %struct.i2c_versatile* %7, %struct.i2c_versatile** %5, align 8
  %8 = load i32, i32* @SCL, align 4
  %9 = load %struct.i2c_versatile*, %struct.i2c_versatile** %5, align 8
  %10 = getelementptr inbounds %struct.i2c_versatile, %struct.i2c_versatile* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i64, i64* @I2C_CONTROLS, align 8
  br label %18

16:                                               ; preds = %2
  %17 = load i64, i64* @I2C_CONTROLC, align 8
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i64 [ %15, %14 ], [ %17, %16 ]
  %20 = add nsw i64 %11, %19
  %21 = call i32 @writel(i32 %8, i64 %20)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
