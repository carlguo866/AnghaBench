; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/win32/user32/messagebox/extr_messagebox.c_wmain.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/win32/user32/messagebox/extr_messagebox.c_wmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"Testing SoftModalMessageBox()...\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Press any key to continue...\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Testing MB_SERVICE_NOTIFICATION...\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Press any key to quit...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wmain(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  %5 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 (...) @TestSoftModalMsgBox()
  %7 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %8 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %9 = call i32 (...) @_getch()
  %10 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %12 = call i32 (...) @TestMsgBoxServiceNotification()
  %13 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %15 = call i32 (...) @_getch()
  ret i32 0
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @TestSoftModalMsgBox(...) #1

declare dso_local i32 @_getch(...) #1

declare dso_local i32 @TestMsgBoxServiceNotification(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
