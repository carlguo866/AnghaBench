; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_syslink.c_SYSLINK_LButtonDown.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_syslink.c_SYSLINK_LButtonDown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*)* @SYSLINK_LButtonDown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SYSLINK_LButtonDown(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* @TRUE, align 4
  %11 = call i32* @SYSLINK_LinkAtPt(%struct.TYPE_6__* %8, i32* %9, i32* %7, i32 %10)
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %39

14:                                               ; preds = %2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @SetFocus(i32 %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32* @SYSLINK_SetFocusLink(%struct.TYPE_6__* %19, i32* %20)
  store i32* %21, i32** %6, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %14
  %25 = load i32*, i32** %6, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = icmp ne i32* %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @SYSLINK_RepaintLink(%struct.TYPE_6__* %29, i32* %30)
  br label %32

32:                                               ; preds = %28, %24, %14
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @SYSLINK_RepaintLink(%struct.TYPE_6__* %36, i32* %37)
  br label %39

39:                                               ; preds = %32, %2
  ret i32 0
}

declare dso_local i32* @SYSLINK_LinkAtPt(%struct.TYPE_6__*, i32*, i32*, i32) #1

declare dso_local i32 @SetFocus(i32) #1

declare dso_local i32* @SYSLINK_SetFocusLink(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @SYSLINK_RepaintLink(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
