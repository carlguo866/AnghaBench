; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_route.c_get_default_gateway_ipv6.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_route.c_get_default_gateway_ipv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.route_ipv6_gateway_info = type { i32 }
%struct.in6_addr = type { i32 }

@D_ROUTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"no support for get_default_gateway_ipv6() on this system\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_default_gateway_ipv6(%struct.route_ipv6_gateway_info* %0, %struct.in6_addr* %1, i32* %2) #0 {
  %4 = alloca %struct.route_ipv6_gateway_info*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca i32*, align 8
  store %struct.route_ipv6_gateway_info* %0, %struct.route_ipv6_gateway_info** %4, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* @D_ROUTE, align 4
  %8 = call i32 @msg(i32 %7, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.route_ipv6_gateway_info*, %struct.route_ipv6_gateway_info** %4, align 8
  %10 = getelementptr inbounds %struct.route_ipv6_gateway_info, %struct.route_ipv6_gateway_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @CLEAR(i32 %11)
  ret void
}

declare dso_local i32 @msg(i32, i8*) #1

declare dso_local i32 @CLEAR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
