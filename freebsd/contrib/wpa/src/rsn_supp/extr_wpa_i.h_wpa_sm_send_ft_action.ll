; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa_i.h_wpa_sm_send_ft_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa_i.h_wpa_sm_send_ft_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32, i32*, i32*, i64)*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_sm*, i32, i32*, i32*, i64)* @wpa_sm_send_ft_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_sm_send_ft_action(%struct.wpa_sm* %0, i32 %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wpa_sm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.wpa_sm* %0, %struct.wpa_sm** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %12 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %13 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (i32, i32, i32*, i32*, i64)*, i32 (i32, i32, i32*, i32*, i64)** %15, align 8
  %17 = icmp ne i32 (i32, i32, i32*, i32*, i64)* %16, null
  br i1 %17, label %18, label %34

18:                                               ; preds = %5
  %19 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %20 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (i32, i32, i32*, i32*, i64)*, i32 (i32, i32, i32*, i32*, i64)** %22, align 8
  %24 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %25 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = load i64, i64* %11, align 8
  %33 = call i32 %23(i32 %28, i32 %29, i32* %30, i32* %31, i64 %32)
  store i32 %33, i32* %6, align 4
  br label %35

34:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %35

35:                                               ; preds = %34, %18
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
