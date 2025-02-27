; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_windmc.c_convert_unicode_to_ACP.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_windmc.c_convert_unicode_to_ACP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mcset_codepage_out = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"unicode string not mappable to ASCII codepage 0x%lx.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*)* @convert_unicode_to_ACP to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @convert_unicode_to_ACP(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %20

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = load i64, i64* @mcset_codepage_out, align 8
  %12 = call i32 @codepage_from_unicode(i32* %5, i32* %10, i8** %4, i64 %11)
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = load i64, i64* @mcset_codepage_out, align 8
  %17 = call i32 @fatal(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %16)
  br label %18

18:                                               ; preds = %15, %9
  %19 = load i8*, i8** %4, align 8
  store i8* %19, i8** %2, align 8
  br label %20

20:                                               ; preds = %18, %8
  %21 = load i8*, i8** %2, align 8
  ret i8* %21
}

declare dso_local i32 @codepage_from_unicode(i32*, i32*, i8**, i64) #1

declare dso_local i32 @fatal(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
