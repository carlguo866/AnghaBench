; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_syslink.c_SYSLINK_LButtonUp.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_syslink.c_SYSLINK_LButtonUp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@LIS_FOCUSED = common dso_local global i32 0, align 4
@NM_CLICK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32*)* @SYSLINK_LButtonUp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SYSLINK_LButtonUp(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %40

11:                                               ; preds = %2
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* @TRUE, align 4
  %15 = call %struct.TYPE_13__* @SYSLINK_LinkAtPt(%struct.TYPE_12__* %12, i32* %13, i32* %6, i32 %14)
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %5, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %17 = icmp ne %struct.TYPE_13__* %16, null
  br i1 %17, label %18, label %39

18:                                               ; preds = %11
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @LIS_FOCUSED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %18
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %35 = load i32, i32* @NM_CLICK, align 4
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @SYSLINK_SendParentNotify(%struct.TYPE_12__* %34, i32 %35, %struct.TYPE_13__* %36, i32 %37)
  br label %39

39:                                               ; preds = %33, %27, %18, %11
  br label %40

40:                                               ; preds = %39, %2
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  store i32 -1, i32* %42, align 4
  ret i32 0
}

declare dso_local %struct.TYPE_13__* @SYSLINK_LinkAtPt(%struct.TYPE_12__*, i32*, i32*, i32) #1

declare dso_local i32 @SYSLINK_SendParentNotify(%struct.TYPE_12__*, i32, %struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
