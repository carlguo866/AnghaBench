; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched32/extr_editor.c_test_EM_GETOPTIONS.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched32/extr_editor.c_test_EM_GETOPTIONS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RICHEDIT_CLASS10A = common dso_local global i32 0, align 4
@WS_POPUP = common dso_local global i32 0, align 4
@hmoduleRichEdit = common dso_local global i32 0, align 4
@EM_GETOPTIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Incorrect options %x\0A\00", align 1
@WS_VSCROLL = common dso_local global i32 0, align 4
@WS_HSCROLL = common dso_local global i32 0, align 4
@ECO_AUTOVSCROLL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Incorrect initial options %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_EM_GETOPTIONS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_EM_GETOPTIONS() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load i32, i32* @RICHEDIT_CLASS10A, align 4
  %4 = load i32, i32* @WS_POPUP, align 4
  %5 = load i32, i32* @hmoduleRichEdit, align 4
  %6 = call i32 @CreateWindowA(i32 %3, i32* null, i32 %4, i32 0, i32 0, i32 200, i32 60, i32* null, i32* null, i32 %5, i32* null)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @EM_GETOPTIONS, align 4
  %9 = call i64 @SendMessageA(i32 %7, i32 %8, i32 0, i32 0)
  store i64 %9, i64* %2, align 8
  %10 = load i64, i64* %2, align 8
  %11 = icmp eq i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = load i64, i64* %2, align 8
  %14 = call i32 @ok(i32 %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load i32, i32* %1, align 4
  %16 = call i32 @DestroyWindow(i32 %15)
  %17 = load i32, i32* @RICHEDIT_CLASS10A, align 4
  %18 = load i32, i32* @WS_POPUP, align 4
  %19 = load i32, i32* @WS_VSCROLL, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @WS_HSCROLL, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @hmoduleRichEdit, align 4
  %24 = call i32 @CreateWindowA(i32 %17, i32* null, i32 %22, i32 0, i32 0, i32 200, i32 60, i32* null, i32* null, i32 %23, i32* null)
  store i32 %24, i32* %1, align 4
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* @EM_GETOPTIONS, align 4
  %27 = call i64 @SendMessageA(i32 %25, i32 %26, i32 0, i32 0)
  store i64 %27, i64* %2, align 8
  %28 = load i64, i64* %2, align 8
  %29 = load i64, i64* @ECO_AUTOVSCROLL, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %0
  %32 = load i64, i64* %2, align 8
  %33 = icmp eq i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i64 @broken(i32 %34)
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %31, %0
  %38 = phi i1 [ true, %0 ], [ %36, %31 ]
  %39 = zext i1 %38 to i32
  %40 = load i64, i64* %2, align 8
  %41 = call i32 @ok(i32 %39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %40)
  %42 = load i32, i32* %1, align 4
  %43 = call i32 @DestroyWindow(i32 %42)
  ret void
}

declare dso_local i32 @CreateWindowA(i32, i32*, i32, i32, i32, i32, i32, i32*, i32*, i32, i32*) #1

declare dso_local i64 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @DestroyWindow(i32) #1

declare dso_local i64 @broken(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
