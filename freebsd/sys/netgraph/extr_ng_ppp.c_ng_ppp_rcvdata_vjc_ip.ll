; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_ppp.c_ng_ppp_rcvdata_vjc_ip.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_ppp.c_ng_ppp_rcvdata_vjc_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@PROT_IP = common dso_local global i32 0, align 4
@NG_PPP_BUNDLE_LINKNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ng_ppp_rcvdata_vjc_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_ppp_rcvdata_vjc_ip(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @NG_HOOK_NODE(i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.TYPE_5__* @NG_NODE_PRIVATE(i32 %10)
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %7, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @NG_FREE_ITEM(i32 %18)
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %3, align 4
  br label %27

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @PROT_IP, align 4
  %25 = load i32, i32* @NG_PPP_BUNDLE_LINKNUM, align 4
  %26 = call i32 @ng_ppp_proto_recv(i32 %22, i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %21, %17
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @NG_HOOK_NODE(i32) #1

declare dso_local %struct.TYPE_5__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NG_FREE_ITEM(i32) #1

declare dso_local i32 @ng_ppp_proto_recv(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
