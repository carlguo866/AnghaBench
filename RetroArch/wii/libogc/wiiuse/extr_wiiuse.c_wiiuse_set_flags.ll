; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_wiiuse.c_wiiuse_set_flags.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_wiiuse.c_wiiuse_set_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_t = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wiiuse_set_flags(%struct.wiimote_t* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wiimote_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wiimote_t* %0, %struct.wiimote_t** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.wiimote_t*, %struct.wiimote_t** %5, align 8
  %9 = icmp ne %struct.wiimote_t* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %34

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.wiimote_t*, %struct.wiimote_t** %5, align 8
  %22 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* %7, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.wiimote_t*, %struct.wiimote_t** %5, align 8
  %28 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.wiimote_t*, %struct.wiimote_t** %5, align 8
  %32 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %11, %10
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
