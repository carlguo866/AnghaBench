; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_ethersubr.c_ether_resolvemulti.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_ethersubr.c_ether_resolvemulti.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_dl = type { i8* }

@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i8* null, align 8
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFT_ETHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.sockaddr**, %struct.sockaddr*)* @ether_resolvemulti to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ether_resolvemulti(%struct.ifnet* %0, %struct.sockaddr** %1, %struct.sockaddr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.sockaddr**, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.sockaddr_dl*, align 8
  %9 = alloca i32*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store %struct.sockaddr** %1, %struct.sockaddr*** %6, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %7, align 8
  %10 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %11 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %25 [
    i32 128, label %13
  ]

13:                                               ; preds = %3
  %14 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %15 = bitcast %struct.sockaddr* %14 to %struct.sockaddr_dl*
  store %struct.sockaddr_dl* %15, %struct.sockaddr_dl** %8, align 8
  %16 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %8, align 8
  %17 = call i32* @LLADDR(%struct.sockaddr_dl* %16)
  store i32* %17, i32** %9, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = call i32 @ETHER_IS_MULTICAST(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %13
  %22 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %22, i32* %4, align 4
  br label %27

23:                                               ; preds = %13
  %24 = load %struct.sockaddr**, %struct.sockaddr*** %6, align 8
  store %struct.sockaddr* null, %struct.sockaddr** %24, align 8
  store i32 0, i32* %4, align 4
  br label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %25, %23, %21
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32* @LLADDR(%struct.sockaddr_dl*) #1

declare dso_local i32 @ETHER_IS_MULTICAST(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
