; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmveth.h_h_send_logical_lan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmveth.h_h_send_logical_lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLPAR_HCALL9_BUFSIZE = common dso_local global i32 0, align 4
@H_SEND_LOGICAL_LAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64*, i64, i64)* @h_send_logical_lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @h_send_logical_lan(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64* %8, i64 %9, i64 %10) #0 {
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  store i64 %0, i64* %12, align 8
  store i64 %1, i64* %13, align 8
  store i64 %2, i64* %14, align 8
  store i64 %3, i64* %15, align 8
  store i64 %4, i64* %16, align 8
  store i64 %5, i64* %17, align 8
  store i64 %6, i64* %18, align 8
  store i64 %7, i64* %19, align 8
  store i64* %8, i64** %20, align 8
  store i64 %9, i64* %21, align 8
  store i64 %10, i64* %22, align 8
  %26 = load i32, i32* @PLPAR_HCALL9_BUFSIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %24, align 8
  %29 = alloca i64, i64 %27, align 16
  store i64 %27, i64* %25, align 8
  %30 = load i64, i64* %22, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %11
  %33 = load i32, i32* @H_SEND_LOGICAL_LAN, align 4
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* %13, align 8
  %36 = load i64, i64* %14, align 8
  %37 = load i64, i64* %15, align 8
  %38 = load i64, i64* %16, align 8
  %39 = load i64, i64* %17, align 8
  %40 = load i64, i64* %18, align 8
  %41 = load i64, i64* %19, align 8
  %42 = load i64, i64* %21, align 8
  %43 = call i64 (i32, i64*, i64, i64, i64, i64, i64, i64, i64, i64, ...) @plpar_hcall9(i32 %33, i64* %29, i64 %34, i64 %35, i64 %36, i64 %37, i64 %38, i64 %39, i64 %40, i64 %41, i64 %42)
  store i64 %43, i64* %23, align 8
  br label %55

44:                                               ; preds = %11
  %45 = load i32, i32* @H_SEND_LOGICAL_LAN, align 4
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* %13, align 8
  %48 = load i64, i64* %14, align 8
  %49 = load i64, i64* %15, align 8
  %50 = load i64, i64* %16, align 8
  %51 = load i64, i64* %17, align 8
  %52 = load i64, i64* %18, align 8
  %53 = load i64, i64* %19, align 8
  %54 = call i64 (i32, i64*, i64, i64, i64, i64, i64, i64, i64, i64, ...) @plpar_hcall9(i32 %45, i64* %29, i64 %46, i64 %47, i64 %48, i64 %49, i64 %50, i64 %51, i64 %52, i64 %53)
  store i64 %54, i64* %23, align 8
  br label %55

55:                                               ; preds = %44, %32
  %56 = getelementptr inbounds i64, i64* %29, i64 0
  %57 = load i64, i64* %56, align 16
  %58 = load i64*, i64** %20, align 8
  store i64 %57, i64* %58, align 8
  %59 = load i64, i64* %23, align 8
  %60 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %60)
  ret i64 %59
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @plpar_hcall9(i32, i64*, i64, i64, i64, i64, i64, i64, i64, i64, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
