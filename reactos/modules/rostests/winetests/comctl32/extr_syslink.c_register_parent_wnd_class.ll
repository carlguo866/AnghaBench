; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_syslink.c_register_parent_wnd_class.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_syslink.c_register_parent_wnd_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32, i32, i64, i32, i64, i64, i32, i64 }

@parent_wnd_proc = common dso_local global i32 0, align 4
@IDC_ARROW = common dso_local global i64 0, align 8
@WHITE_BRUSH = common dso_local global i32 0, align 4
@parentClassW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @register_parent_wnd_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_parent_wnd_class() #0 {
  %1 = alloca %struct.TYPE_3__, align 8
  %2 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 9
  store i64 0, i64* %2, align 8
  %3 = load i32, i32* @parent_wnd_proc, align 4
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 8
  store i32 %3, i32* %4, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 7
  store i64 0, i64* %5, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 6
  store i64 0, i64* %6, align 8
  %7 = call i32 @GetModuleHandleW(i32* null)
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 5
  store i32 %7, i32* %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 4
  store i64 0, i64* %9, align 8
  %10 = load i64, i64* @IDC_ARROW, align 8
  %11 = trunc i64 %10 to i32
  %12 = call i32 @LoadCursorW(i32 0, i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 3
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @WHITE_BRUSH, align 4
  %15 = call i32 @GetStockObject(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  store i32 %15, i32* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  store i32* null, i32** %17, align 8
  %18 = load i32, i32* @parentClassW, align 4
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i32 %18, i32* %19, align 8
  %20 = call i32 @RegisterClassW(%struct.TYPE_3__* %1)
  ret i32 %20
}

declare dso_local i32 @GetModuleHandleW(i32*) #1

declare dso_local i32 @LoadCursorW(i32, i32) #1

declare dso_local i32 @GetStockObject(i32) #1

declare dso_local i32 @RegisterClassW(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
