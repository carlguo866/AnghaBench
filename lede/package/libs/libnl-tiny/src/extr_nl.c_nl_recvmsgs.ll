; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_nl.c_nl_recvmsgs.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_nl.c_nl_recvmsgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_sock = type { i32 }
%struct.nl_cb = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nl_recvmsgs(%struct.nl_sock* %0, %struct.nl_cb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nl_sock*, align 8
  %5 = alloca %struct.nl_cb*, align 8
  store %struct.nl_sock* %0, %struct.nl_sock** %4, align 8
  store %struct.nl_cb* %1, %struct.nl_cb** %5, align 8
  %6 = load %struct.nl_cb*, %struct.nl_cb** %5, align 8
  %7 = getelementptr inbounds %struct.nl_cb, %struct.nl_cb* %6, i32 0, i32 0
  %8 = bitcast {}** %7 to i32 (%struct.nl_sock*, %struct.nl_cb*)**
  %9 = load i32 (%struct.nl_sock*, %struct.nl_cb*)*, i32 (%struct.nl_sock*, %struct.nl_cb*)** %8, align 8
  %10 = icmp ne i32 (%struct.nl_sock*, %struct.nl_cb*)* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load %struct.nl_cb*, %struct.nl_cb** %5, align 8
  %13 = getelementptr inbounds %struct.nl_cb, %struct.nl_cb* %12, i32 0, i32 0
  %14 = bitcast {}** %13 to i32 (%struct.nl_sock*, %struct.nl_cb*)**
  %15 = load i32 (%struct.nl_sock*, %struct.nl_cb*)*, i32 (%struct.nl_sock*, %struct.nl_cb*)** %14, align 8
  %16 = load %struct.nl_sock*, %struct.nl_sock** %4, align 8
  %17 = load %struct.nl_cb*, %struct.nl_cb** %5, align 8
  %18 = call i32 %15(%struct.nl_sock* %16, %struct.nl_cb* %17)
  store i32 %18, i32* %3, align 4
  br label %23

19:                                               ; preds = %2
  %20 = load %struct.nl_sock*, %struct.nl_sock** %4, align 8
  %21 = load %struct.nl_cb*, %struct.nl_cb** %5, align 8
  %22 = call i32 @recvmsgs(%struct.nl_sock* %20, %struct.nl_cb* %21)
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %11
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @recvmsgs(%struct.nl_sock*, %struct.nl_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
