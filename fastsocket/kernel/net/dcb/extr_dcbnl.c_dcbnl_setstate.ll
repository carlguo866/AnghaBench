; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dcb/extr_dcbnl.c_dcbnl_setstate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dcb/extr_dcbnl.c_dcbnl_setstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, i32)* }
%struct.nlattr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@DCB_ATTR_STATE = common dso_local global i64 0, align 8
@RTM_SETDCB = common dso_local global i32 0, align 4
@DCB_CMD_SSTATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.nlattr**, i32, i32, i32)* @dcbnl_setstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcbnl_setstate(%struct.net_device* %0, %struct.nlattr** %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %12, align 4
  %16 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %17 = load i64, i64* @DCB_ATTR_STATE, align 8
  %18 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %17
  %19 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %20 = icmp ne %struct.nlattr* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %5
  %22 = load %struct.net_device*, %struct.net_device** %7, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, i32)** %25, align 8
  %27 = icmp ne i32 (%struct.net_device*, i32)* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %21, %5
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %6, align 4
  br label %52

30:                                               ; preds = %21
  %31 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %32 = load i64, i64* @DCB_ATTR_STATE, align 8
  %33 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %32
  %34 = load %struct.nlattr*, %struct.nlattr** %33, align 8
  %35 = call i32 @nla_get_u8(%struct.nlattr* %34)
  store i32 %35, i32* %13, align 4
  %36 = load %struct.net_device*, %struct.net_device** %7, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, i32)** %39, align 8
  %41 = load %struct.net_device*, %struct.net_device** %7, align 8
  %42 = load i32, i32* %13, align 4
  %43 = call i32 %40(%struct.net_device* %41, i32 %42)
  %44 = load i32, i32* @RTM_SETDCB, align 4
  %45 = load i32, i32* @DCB_CMD_SSTATE, align 4
  %46 = load i64, i64* @DCB_ATTR_STATE, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @dcbnl_reply(i32 %43, i32 %44, i32 %45, i64 %46, i32 %47, i32 %48, i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %30, %28
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #1

declare dso_local i32 @dcbnl_reply(i32, i32, i32, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
