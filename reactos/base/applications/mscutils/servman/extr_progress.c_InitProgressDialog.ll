; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_progress.c_InitProgressDialog.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_progress.c_InitProgressDialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@IDC_SERVCON_PROGRESS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@PBM_SETRANGE = common dso_local global i32 0, align 4
@PROGRESS_RANGE = common dso_local global i32 0, align 4
@PBM_SETSTEP = common dso_local global i32 0, align 4
@ActionThread = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @InitProgressDialog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InitProgressDialog(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %10, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @IDC_SERVCON_PROGRESS, align 4
  %20 = call i32 @GetDlgItem(i32 %18, i32 %19)
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %5, align 4
  br label %52

29:                                               ; preds = %4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PBM_SETRANGE, align 4
  %34 = load i32, i32* @PROGRESS_RANGE, align 4
  %35 = call i32 @MAKELPARAM(i32 0, i32 %34)
  %36 = call i32 @SendMessageW(i32 %32, i32 %33, i32 0, i32 %35)
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PBM_SETSTEP, align 4
  %41 = call i32 @SendMessageW(i32 %39, i32 %40, i32 1, i32 0)
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %43 = call i64 @_beginthreadex(i32* null, i32 0, i32* @ActionThread, %struct.TYPE_3__* %42, i32 0, i32* null)
  store i64 %43, i64* %11, align 8
  %44 = load i64, i64* %11, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %29
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %5, align 4
  br label %52

48:                                               ; preds = %29
  %49 = load i64, i64* %11, align 8
  %50 = call i32 @CloseHandle(i64 %49)
  %51 = load i32, i32* @TRUE, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %48, %46, %27
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @MAKELPARAM(i32, i32) #1

declare dso_local i64 @_beginthreadex(i32*, i32, i32*, %struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
