; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa_i.h_wpa_sm_set_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa_i.h_wpa_sm_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_sm*, i32)* @wpa_sm_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_sm_set_state(%struct.wpa_sm* %0, i32 %1) #0 {
  %3 = alloca %struct.wpa_sm*, align 8
  %4 = alloca i32, align 4
  store %struct.wpa_sm* %0, %struct.wpa_sm** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %6 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32 (i32, i32)*, i32 (i32, i32)** %8, align 8
  %10 = call i32 @WPA_ASSERT(i32 (i32, i32)* %9)
  %11 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %12 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32 (i32, i32)*, i32 (i32, i32)** %14, align 8
  %16 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %17 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 %15(i32 %20, i32 %21)
  ret void
}

declare dso_local i32 @WPA_ASSERT(i32 (i32, i32)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
