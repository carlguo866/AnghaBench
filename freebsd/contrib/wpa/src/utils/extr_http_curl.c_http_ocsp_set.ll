; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_http_curl.c_http_ocsp_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_http_curl.c_http_ocsp_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_ctx = type { i32 }

@NO_OCSP = common dso_local global i32 0, align 4
@OPTIONAL_OCSP = common dso_local global i32 0, align 4
@MANDATORY_OCSP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @http_ocsp_set(%struct.http_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.http_ctx*, align 8
  %4 = alloca i32, align 4
  store %struct.http_ctx* %0, %struct.http_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load i32, i32* @NO_OCSP, align 4
  %9 = load %struct.http_ctx*, %struct.http_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.http_ctx, %struct.http_ctx* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  br label %19

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i32, i32* @OPTIONAL_OCSP, align 4
  %16 = load %struct.http_ctx*, %struct.http_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.http_ctx, %struct.http_ctx* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  br label %18

18:                                               ; preds = %14, %11
  br label %19

19:                                               ; preds = %18, %7
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* @MANDATORY_OCSP, align 4
  %24 = load %struct.http_ctx*, %struct.http_ctx** %3, align 8
  %25 = getelementptr inbounds %struct.http_ctx, %struct.http_ctx* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %22, %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
