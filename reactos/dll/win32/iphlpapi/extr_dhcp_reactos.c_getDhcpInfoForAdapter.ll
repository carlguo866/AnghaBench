; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/iphlpapi/extr_dhcp_reactos.c_getDhcpInfoForAdapter.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/iphlpapi/extr_dhcp_reactos.c_getDhcpInfoForAdapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@INADDR_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @getDhcpInfoForAdapter(i64 %0, i32* %1, i32* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  store i64 0, i64* %13, align 8
  %14 = call i64 @DhcpCApiInitialize(i64* %13)
  store i64 %14, i64* %12, align 8
  %15 = load i64, i64* %12, align 8
  %16 = load i64, i64* @ERROR_SUCCESS, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %5
  %19 = load i32, i32* @FALSE, align 4
  %20 = load i32*, i32** %8, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @INADDR_NONE, align 4
  %22 = call i32 @htonl(i32 %21)
  %23 = load i32*, i32** %9, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i64*, i64** %10, align 8
  store i64 0, i64* %24, align 8
  %25 = load i64*, i64** %11, align 8
  store i64 0, i64* %25, align 8
  %26 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %26, i64* %6, align 8
  br label %36

27:                                               ; preds = %5
  %28 = load i64, i64* %7, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load i64*, i64** %10, align 8
  %32 = load i64*, i64** %11, align 8
  %33 = call i64 @DhcpRosGetAdapterInfo(i64 %28, i32* %29, i32* %30, i64* %31, i64* %32)
  store i64 %33, i64* %12, align 8
  %34 = call i32 (...) @DhcpCApiCleanup()
  %35 = load i64, i64* %12, align 8
  store i64 %35, i64* %6, align 8
  br label %36

36:                                               ; preds = %27, %18
  %37 = load i64, i64* %6, align 8
  ret i64 %37
}

declare dso_local i64 @DhcpCApiInitialize(i64*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @DhcpRosGetAdapterInfo(i64, i32*, i32*, i64*, i64*) #1

declare dso_local i32 @DhcpCApiCleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
