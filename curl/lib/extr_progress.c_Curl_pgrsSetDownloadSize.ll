; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_progress.c_Curl_pgrsSetDownloadSize.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_progress.c_Curl_pgrsSetDownloadSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@PGRS_DL_SIZE_KNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Curl_pgrsSetDownloadSize(%struct.Curl_easy* %0, i64 %1) #0 {
  %3 = alloca %struct.Curl_easy*, align 8
  %4 = alloca i64, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp sge i64 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = load i64, i64* %4, align 8
  %9 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %10 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store i64 %8, i64* %11, align 8
  %12 = load i32, i32* @PGRS_DL_SIZE_KNOWN, align 4
  %13 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %14 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = or i32 %16, %12
  store i32 %17, i32* %15, align 8
  br label %29

18:                                               ; preds = %2
  %19 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %20 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* @PGRS_DL_SIZE_KNOWN, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %25 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, %23
  store i32 %28, i32* %26, align 8
  br label %29

29:                                               ; preds = %18, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
