; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_accounting.c_accounting_receive.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_accounting.c_accounting_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_msg = type { i32 }
%struct.TYPE_2__ = type { i64 }

@RADIUS_CODE_ACCOUNTING_RESPONSE = common dso_local global i64 0, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unknown RADIUS message code\00", align 1
@RADIUS_RX_UNKNOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"Incoming RADIUS packet did not have correct Authenticator - dropped\00", align 1
@RADIUS_RX_INVALID_AUTHENTICATOR = common dso_local global i32 0, align 4
@RADIUS_RX_PROCESSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radius_msg*, %struct.radius_msg*, i32*, i64, i8*)* @accounting_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @accounting_receive(%struct.radius_msg* %0, %struct.radius_msg* %1, i32* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.radius_msg*, align 8
  %8 = alloca %struct.radius_msg*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.radius_msg* %0, %struct.radius_msg** %7, align 8
  store %struct.radius_msg* %1, %struct.radius_msg** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %12 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %13 = call %struct.TYPE_2__* @radius_msg_get_hdr(%struct.radius_msg* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @RADIUS_CODE_ACCOUNTING_RESPONSE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %5
  %19 = load i32, i32* @MSG_INFO, align 4
  %20 = call i32 @wpa_printf(i32 %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @RADIUS_RX_UNKNOWN, align 4
  store i32 %21, i32* %6, align 4
  br label %35

22:                                               ; preds = %5
  %23 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load %struct.radius_msg*, %struct.radius_msg** %8, align 8
  %27 = call i64 @radius_msg_verify(%struct.radius_msg* %23, i32* %24, i64 %25, %struct.radius_msg* %26, i32 0)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load i32, i32* @MSG_INFO, align 4
  %31 = call i32 @wpa_printf(i32 %30, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @RADIUS_RX_INVALID_AUTHENTICATOR, align 4
  store i32 %32, i32* %6, align 4
  br label %35

33:                                               ; preds = %22
  %34 = load i32, i32* @RADIUS_RX_PROCESSED, align 4
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %33, %29, %18
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local %struct.TYPE_2__* @radius_msg_get_hdr(%struct.radius_msg*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @radius_msg_verify(%struct.radius_msg*, i32*, i64, %struct.radius_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
