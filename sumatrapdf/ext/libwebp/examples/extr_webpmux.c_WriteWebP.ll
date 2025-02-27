; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_webpmux.c_WriteWebP.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_webpmux.c_WriteWebP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WEBP_MUX_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Error (%s) assembling the WebP file.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @WriteWebP to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WriteWebP(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i64 @WebPMuxAssemble(i32* %9, i32* %7)
  store i64 %10, i64* %8, align 8
  %11 = load i64, i64* %8, align 8
  %12 = load i64, i64* @WEBP_MUX_OK, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i32, i32* @stderr, align 4
  %16 = load i64, i64* %8, align 8
  %17 = call i8* @ErrorString(i64 %16)
  %18 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %17)
  store i32 0, i32* %3, align 4
  br label %24

19:                                               ; preds = %2
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @WriteData(i8* %20, i32* %7)
  store i32 %21, i32* %6, align 4
  %22 = call i32 @WebPDataClear(i32* %7)
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %19, %14
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i64 @WebPMuxAssemble(i32*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @ErrorString(i64) #1

declare dso_local i32 @WriteData(i8*, i32*) #1

declare dso_local i32 @WebPDataClear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
