; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_wx_set_encode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_wx_set_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { i32 }
%struct.ipw2100_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ipw2100_wx_set_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw2100_wx_set_encode(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ipw2100_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.ipw2100_priv* @libipw_priv(%struct.net_device* %10)
  store %struct.ipw2100_priv* %11, %struct.ipw2100_priv** %9, align 8
  %12 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %9, align 8
  %13 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.iw_request_info*, %struct.iw_request_info** %6, align 8
  %16 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @libipw_wx_set_encode(i32 %14, %struct.iw_request_info* %15, %union.iwreq_data* %16, i8* %17)
  ret i32 %18
}

declare dso_local %struct.ipw2100_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i32 @libipw_wx_set_encode(i32, %struct.iw_request_info*, %union.iwreq_data*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
