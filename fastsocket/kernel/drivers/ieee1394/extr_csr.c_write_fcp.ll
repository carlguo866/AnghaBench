; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr.c_write_fcp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr.c_write_fcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_host = type { i32 }

@CSR_REGISTER_BASE = common dso_local global i32 0, align 4
@RCODE_TYPE_ERROR = common dso_local global i32 0, align 4
@RCODE_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpsb_host*, i32, i32, i32*, i32, i64, i32)* @write_fcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_fcp(%struct.hpsb_host* %0, i32 %1, i32 %2, i32* %3, i32 %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.hpsb_host*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.hpsb_host* %0, %struct.hpsb_host** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %17 = load i32, i32* %13, align 4
  %18 = load i32, i32* @CSR_REGISTER_BASE, align 4
  %19 = sub nsw i32 %17, %18
  store i32 %19, i32* %16, align 4
  %20 = load i64, i64* %14, align 8
  %21 = icmp ugt i64 %20, 512
  br i1 %21, label %22, label %24

22:                                               ; preds = %7
  %23 = load i32, i32* @RCODE_TYPE_ERROR, align 4
  store i32 %23, i32* %8, align 4
  br label %42

24:                                               ; preds = %7
  %25 = load i32, i32* %16, align 4
  switch i32 %25, label %38 [
    i32 129, label %26
    i32 128, label %32
  ]

26:                                               ; preds = %24
  %27 = load %struct.hpsb_host*, %struct.hpsb_host** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32*, i32** %12, align 8
  %30 = load i64, i64* %14, align 8
  %31 = call i32 @highlevel_fcp_request(%struct.hpsb_host* %27, i32 %28, i32 0, i32* %29, i64 %30)
  br label %40

32:                                               ; preds = %24
  %33 = load %struct.hpsb_host*, %struct.hpsb_host** %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32*, i32** %12, align 8
  %36 = load i64, i64* %14, align 8
  %37 = call i32 @highlevel_fcp_request(%struct.hpsb_host* %33, i32 %34, i32 1, i32* %35, i64 %36)
  br label %40

38:                                               ; preds = %24
  %39 = load i32, i32* @RCODE_TYPE_ERROR, align 4
  store i32 %39, i32* %8, align 4
  br label %42

40:                                               ; preds = %32, %26
  %41 = load i32, i32* @RCODE_COMPLETE, align 4
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %40, %38, %22
  %43 = load i32, i32* %8, align 4
  ret i32 %43
}

declare dso_local i32 @highlevel_fcp_request(%struct.hpsb_host*, i32, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
