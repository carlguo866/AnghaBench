; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_transfer.c_Curl_init_CONNECT.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_transfer.c_Curl_init_CONNECT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Curl_init_CONNECT(%struct.Curl_easy* %0) #0 {
  %2 = alloca %struct.Curl_easy*, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %2, align 8
  %3 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %4 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %8 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i32 %6, i32* %9, align 4
  %10 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %11 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %15 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
