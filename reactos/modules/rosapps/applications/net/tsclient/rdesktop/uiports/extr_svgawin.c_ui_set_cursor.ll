; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_svgawin.c_ui_set_cursor.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_svgawin.c_ui_set_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@mousex = common dso_local global i32 0, align 4
@mousey = common dso_local global i32 0, align 4
@mcursor = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ui_set_cursor(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i32, i32* @mousex, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @mousey, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @mousex, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @mcursor, i32 0, i32 0), align 4
  %11 = add nsw i32 %9, %10
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @mousey, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @mcursor, i32 0, i32 1), align 4
  %14 = add nsw i32 %12, %13
  store i32 %14, i32* %4, align 4
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @memcpy(%struct.TYPE_3__* @mcursor, i8* %15, i32 4)
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @mcursor, i32 0, i32 0), align 4
  %19 = sub nsw i32 %17, %18
  store i32 %19, i32* @mousex, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @mcursor, i32 0, i32 1), align 4
  %22 = sub nsw i32 %20, %21
  store i32 %22, i32* @mousey, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @draw_cursor_under(i32 %23, i32 %24)
  %26 = call i32 (...) @draw_cursor()
  ret void
}

declare dso_local i32 @memcpy(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @draw_cursor_under(i32, i32) #1

declare dso_local i32 @draw_cursor(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
