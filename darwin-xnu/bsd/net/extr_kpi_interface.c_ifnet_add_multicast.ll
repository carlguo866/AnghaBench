; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifnet_add_multicast.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifnet_add_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i64 0, align 8
@AF_LINK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifnet_add_multicast(i32* %0, %struct.sockaddr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %12 = icmp eq %struct.sockaddr* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10, %3
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %4, align 4
  br label %34

15:                                               ; preds = %10
  %16 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %17 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @AF_UNSPEC, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %23 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AF_LINK, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %4, align 4
  br label %34

29:                                               ; preds = %21, %15
  %30 = load i32*, i32** %5, align 8
  %31 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @if_addmulti_anon(i32* %30, %struct.sockaddr* %31, i32* %32)
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %29, %27, %13
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @if_addmulti_anon(i32*, %struct.sockaddr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
