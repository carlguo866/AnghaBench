; ModuleID = '/home/carl/AnghaBench/nuklear/demo/gdi/extr_nuklear_gdi.h_nk_gdi_clear.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/gdi/extr_nuklear_gdi.h_nk_gdi_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.nk_color = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@gdi = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@ETO_OPAQUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @nk_gdi_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_gdi_clear(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.nk_color, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__, align 4
  %7 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %3, i32 0, i32 0
  store i32 %1, i32* %7, align 4
  store i32 %0, i32* %4, align 4
  %8 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %3, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @convert_color(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gdi, i32 0, i32 1), align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gdi, i32 0, i32 0), align 4
  store i32 %16, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @SetBkColor(i32 %17, i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @ETO_OPAQUE, align 4
  %22 = call i32 @ExtTextOutW(i32 %20, i32 0, i32 0, i32 %21, %struct.TYPE_4__* %6, i32* null, i32 0, i32* null)
  ret void
}

declare dso_local i32 @convert_color(i32) #1

declare dso_local i32 @SetBkColor(i32, i32) #1

declare dso_local i32 @ExtTextOutW(i32, i32, i32, i32, %struct.TYPE_4__*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
