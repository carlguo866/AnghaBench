; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_hmc5883l.c_hmc5883_setup.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_hmc5883l.c_hmc5883_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hmc5883_i2c_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"device not found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @hmc5883_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hmc5883_setup(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32, i32* @hmc5883_i2c_id, align 4
  %8 = call i32 @r8u(i32 %7, i32 10)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @hmc5883_i2c_id, align 4
  %10 = call i32 @r8u(i32 %9, i32 11)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @hmc5883_i2c_id, align 4
  %12 = call i32 @r8u(i32 %11, i32 12)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 72
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 52
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 51
  br i1 %20, label %21, label %24

21:                                               ; preds = %18, %15, %1
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @luaL_error(i32* %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %23, i32* %2, align 4
  br label %31

24:                                               ; preds = %18
  %25 = load i32, i32* @hmc5883_i2c_id, align 4
  %26 = call i32 @w8u(i32 %25, i32 0, i32 112)
  %27 = load i32, i32* @hmc5883_i2c_id, align 4
  %28 = call i32 @w8u(i32 %27, i32 1, i32 160)
  %29 = load i32, i32* @hmc5883_i2c_id, align 4
  %30 = call i32 @w8u(i32 %29, i32 2, i32 0)
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %24, %21
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @r8u(i32, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @w8u(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
