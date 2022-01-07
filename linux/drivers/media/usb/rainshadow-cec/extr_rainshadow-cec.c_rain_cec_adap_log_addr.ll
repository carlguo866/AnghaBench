; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/rainshadow-cec/extr_rainshadow-cec.c_rain_cec_adap_log_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/rainshadow-cec/extr_rainshadow-cec.c_rain_cec_adap_log_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { i32 }
%struct.rain = type { i32 }

@CEC_LOG_ADDR_INVALID = common dso_local global i32 0, align 4
@CEC_LOG_ADDR_UNREGISTERED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"A %x\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ADR\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cec_adapter*, i32)* @rain_cec_adap_log_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rain_cec_adap_log_addr(%struct.cec_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.cec_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rain*, align 8
  %6 = alloca [16 x i32], align 16
  store %struct.cec_adapter* %0, %struct.cec_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %8 = call %struct.rain* @cec_get_drvdata(%struct.cec_adapter* %7)
  store %struct.rain* %8, %struct.rain** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @CEC_LOG_ADDR_INVALID, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @CEC_LOG_ADDR_UNREGISTERED, align 4
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %12, %2
  %15 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @snprintf(i32* %15, i32 64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.rain*, %struct.rain** %5, align 8
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %20 = call i32 @rain_send_and_wait(%struct.rain* %18, i32* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  ret i32 %20
}

declare dso_local %struct.rain* @cec_get_drvdata(%struct.cec_adapter*) #1

declare dso_local i32 @snprintf(i32*, i32, i8*, i32) #1

declare dso_local i32 @rain_send_and_wait(%struct.rain*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
