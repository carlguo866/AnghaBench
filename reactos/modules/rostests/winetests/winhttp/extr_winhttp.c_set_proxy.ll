; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/winhttp/extr_winhttp.c_set_proxy.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/winhttp/extr_winhttp.c_set_proxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@Connections = common dso_local global i32 0, align 4
@WinHttpSettings = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i64, i64)* @set_proxy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_proxy(i32 %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %11 = load i32, i32* @Connections, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @RegCreateKeyExW(i32 %10, i32 %11, i32 0, i32* null, i32 0, i32 %12, i32* null, i32* %9, i32* null)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %4
  %16 = load i64, i64* %7, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @WinHttpSettings, align 4
  %21 = load i64, i64* %8, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @RegSetValueExW(i32 %19, i32 %20, i32 0, i64 %21, i32* %22, i64 %23)
  br label %29

25:                                               ; preds = %15
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @WinHttpSettings, align 4
  %28 = call i32 @RegDeleteValueW(i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %18
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @RegCloseKey(i32 %30)
  br label %32

32:                                               ; preds = %29, %4
  ret void
}

declare dso_local i32 @RegCreateKeyExW(i32, i32, i32, i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @RegSetValueExW(i32, i32, i32, i64, i32*, i64) #1

declare dso_local i32 @RegDeleteValueW(i32, i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
