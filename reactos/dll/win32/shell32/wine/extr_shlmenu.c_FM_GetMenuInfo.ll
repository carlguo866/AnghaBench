; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_shlmenu.c_FM_GetMenuInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_shlmenu.c_FM_GetMenuInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32 }

@MIM_MENUDATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"menudata corrupt: %p %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @FM_GetMenuInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @FM_GetMenuInfo(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i32 24, i32* %6, align 8
  %7 = load i32, i32* @MIM_MENUDATA, align 4
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  store i32 %7, i32* %8, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @GetMenuInfo(i32 %9, %struct.TYPE_3__* %4)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %31

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i32*
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = icmp ne i64 %22, 24
  br i1 %23, label %24, label %29

24:                                               ; preds = %19, %13
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32* %25, i32 %27)
  store i32* null, i32** %2, align 8
  br label %31

29:                                               ; preds = %19
  %30 = load i32*, i32** %5, align 8
  store i32* %30, i32** %2, align 8
  br label %31

31:                                               ; preds = %29, %24, %12
  %32 = load i32*, i32** %2, align 8
  ret i32* %32
}

declare dso_local i32 @GetMenuInfo(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @ERR(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
