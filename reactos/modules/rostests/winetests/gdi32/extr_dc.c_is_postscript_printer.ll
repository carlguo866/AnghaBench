; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_dc.c_is_postscript_printer.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_dc.c_is_postscript_printer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GETTECHNOLOGY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"PostScript\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @is_postscript_printer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_postscript_printer(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [256 x i8], align 16
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @GETTECHNOLOGY, align 4
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %8 = call i64 @ExtEscape(i32 %5, i32 %6, i32 0, i32* null, i32 256, i8* %7)
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %12 = call i64 @strcmp(i8* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %2, align 4
  br label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %15, %10
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i64 @ExtEscape(i32, i32, i32, i32*, i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
