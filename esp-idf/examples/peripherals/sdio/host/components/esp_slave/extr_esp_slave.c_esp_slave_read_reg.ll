; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/sdio/host/components/esp_slave/extr_esp_slave.c_esp_slave_read_reg.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/sdio/host/components/esp_slave/extr_esp_slave.c_esp_slave_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"read_reg\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"reg: %08X\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_slave_read_reg(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* @TAG, align 4
  %10 = call i32 (i32, i8*, ...) @ESP_LOGV(i32 %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* %6, align 4
  %12 = icmp sge i32 %11, 64
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %14, i32* %4, align 4
  br label %26

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @HOST_SLCHOST_CONF_W_REG(i32 %17)
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @esp_slave_read_byte(i32* %16, i32 %18, i32* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* @TAG, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i32, i8*, ...) @ESP_LOGV(i32 %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %15, %13
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @ESP_LOGV(i32, i8*, ...) #1

declare dso_local i32 @esp_slave_read_byte(i32*, i32, i32*) #1

declare dso_local i32 @HOST_SLCHOST_CONF_W_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
