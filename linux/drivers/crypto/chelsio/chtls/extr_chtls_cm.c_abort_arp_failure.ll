; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_abort_arp_failure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_abort_arp_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.cpl_abort_req = type { i32 }
%struct.chtls_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@CPL_ABORT_NO_RST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.sk_buff*)* @abort_arp_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @abort_arp_failure(i8* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.cpl_abort_req*, align 8
  %6 = alloca %struct.chtls_dev*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = call %struct.cpl_abort_req* @cplhdr(%struct.sk_buff* %7)
  store %struct.cpl_abort_req* %8, %struct.cpl_abort_req** %5, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.chtls_dev*
  store %struct.chtls_dev* %10, %struct.chtls_dev** %6, align 8
  %11 = load i32, i32* @CPL_ABORT_NO_RST, align 4
  %12 = load %struct.cpl_abort_req*, %struct.cpl_abort_req** %5, align 8
  %13 = getelementptr inbounds %struct.cpl_abort_req, %struct.cpl_abort_req* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.chtls_dev*, %struct.chtls_dev** %6, align 8
  %15 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call i32 @cxgb4_ofld_send(i32 %20, %struct.sk_buff* %21)
  ret void
}

declare dso_local %struct.cpl_abort_req* @cplhdr(%struct.sk_buff*) #1

declare dso_local i32 @cxgb4_ofld_send(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
