; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_workshop.c_workshop_toolbar_end.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_workshop.c_workshop_toolbar_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_go = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"go\00", align 1
@True = common dso_local global i32 0, align 4
@workshopInitDone = common dso_local global i32 0, align 4
@WS_TRACE = common dso_local global i32 0, align 4
@WS_TRACE_VERBOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @workshop_toolbar_end() #0 {
  %1 = alloca [64 x i32], align 16
  %2 = getelementptr inbounds [64 x i32], [64 x i32]* %1, i64 0, i64 0
  %3 = load i32, i32* @p_go, align 4
  %4 = call i32 @STRCPY(i32* %2, i32 %3)
  %5 = load i32, i32* @p_go, align 4
  %6 = call i32* @vim_strchr(i32 %5, i8 signext 84)
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %0
  %9 = getelementptr inbounds [64 x i32], [64 x i32]* %1, i64 0, i64 0
  %10 = call i32 @STRCAT(i32* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = getelementptr inbounds [64 x i32], [64 x i32]* %1, i64 0, i64 0
  %12 = call i32 @set_option_value(i32* bitcast ([3 x i8]* @.str.1 to i32*), i64 0, i32* %11, i32 0)
  br label %13

13:                                               ; preds = %8, %0
  %14 = load i32, i32* @True, align 4
  store i32 %14, i32* @workshopInitDone, align 4
  ret void
}

declare dso_local i32 @STRCPY(i32*, i32) #1

declare dso_local i32* @vim_strchr(i32, i8 signext) #1

declare dso_local i32 @STRCAT(i32*, i8*) #1

declare dso_local i32 @set_option_value(i32*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
