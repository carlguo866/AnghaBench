; ModuleID = '/home/carl/AnghaBench/freebsd/tools/test/iconv/gnu/extr_gnu.c_ctl_set_translit2.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/test/iconv/gnu/extr_gnu.c_ctl_set_translit2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"ASCII//TRANSLIT\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@ICONV_SET_TRANSLITERATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ctl_set_translit2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_set_translit2() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %5 = call i64 @iconv_open(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i64 %5, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = icmp eq i64 %6, -1
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %22

9:                                                ; preds = %0
  %10 = load i64, i64* %2, align 8
  %11 = load i32, i32* @ICONV_SET_TRANSLITERATE, align 4
  %12 = call i64 @iconvctl(i64 %10, i32 %11, i32* %3)
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 0, i32 -1
  store i32 %15, i32* %4, align 4
  %16 = load i64, i64* %2, align 8
  %17 = call i32 @iconv_close(i64 %16)
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %9
  store i32 -1, i32* %1, align 4
  br label %22

20:                                               ; preds = %9
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %1, align 4
  br label %22

22:                                               ; preds = %20, %19, %8
  %23 = load i32, i32* %1, align 4
  ret i32 %23
}

declare dso_local i64 @iconv_open(i8*, i8*) #1

declare dso_local i64 @iconvctl(i64, i32, i32*) #1

declare dso_local i32 @iconv_close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
